<template>
  <div class="app-container">
    <el-card class="box-card">
      <div class="tip" style="text-align: center;">
        您感兴趣的课程:
        <el-select v-model="course_key" placeholder="请选择课程" style="padding-top:10px; padding-bottom:10px;">
        <el-option
          v-for="item in course_key_options"
          :key="item.value"
          :label="item.label"
          :value="item.value">
        </el-option>
        </el-select>
        <br/>
        您最关注的方面:
        <el-select v-model="concern_category" placeholder="请选择您关注的方面" style="padding-top:10px; padding-bottom:10px;">
        <el-option
          v-for="item in concern_category_options"
          :key="item.value"
          :label="item.label"
          :value="item.value">
        </el-option>
        </el-select>
        <br/>
        <!-- 您最适合的难度:
        <el-select v-model="difficulty_coefficient" placeholder="请选择您适合的难度" style="padding-top:10px; padding-bottom:10px;">
        <el-option
          v-for="item in difficulty_coefficient_options"
          :key="item.value"
          :label="item.label"
          :value="item.value">
        </el-option>
        </el-select> -->
      </div>
    </el-card>
    <el-row style="text-align: center; padding-top:20px; padding-bottom:20px;">
      <el-button type="info" round @click="clear()">清空内容</el-button>
      <el-button type="primary" round @click="recommend()">推荐课程</el-button>
    </el-row>
    <el-card v-show="visible" class="box-card">
      <div v-show="visible" class="tip">
        推荐结果:
      </div>
      <!-- <el-input v-show="visible" v-model="result" type="textarea" :rows="13" /> -->
      <el-table
        :data="recommendResults"
        height="500"
        border
        style="width: 100%"
      >
        <el-table-column
          prop="course_rank"
          label="排名"
        />
        <el-table-column
          prop="course_score"
          label="评分"
        />
        <el-table-column
          prop="course_name"
          label="课程"
        />
        <el-table-column
          prop="university_name"
          label="大学"
        />
        <el-table-column
          prop="teacher_name"
          label="教师"
        />
        <el-table-column
          prop="url"
          label="链接"
        >
        <template slot-scope="props">
          <el-link :href="props.row.url" target="_blank">{{props.row.url}}</el-link>
	      </template>
        </el-table-column>
      </el-table>
    </el-card>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data() {
    return {
      textarea: '', // 用户输入框内输入内容
      recommendResults: '', // 情感分析结果
      stage: false,
      visible: false, // 设置情感分析结果的可见性
      course_key_options: [{
          value: '数据结构',
          label: '数据结构'
        }, {
          value: '操作系统',
          label: '操作系统'
        }, {
          value: '计算机组成原理',
          label: '计算机组成原理'
        }, {
          value: '计算机网络',
          label: '计算机网络'
        }],
        course_key: '',
        concern_category_options: [{
          value: '系统全面',
          label: '系统全面'
        }, {
          value: '耐心细致',
          label: '耐心细致'
        }, {
          value: '条理清晰',
          label: '条理清晰'
        }, {
          value: '风趣幽默',
          label: '风趣幽默'
        }, {
          value: '设计巧妙',
          label: '设计巧妙'
        }, {
          value: '视频质量',
          label: '视频质量'
        }, {
          value: '课件质量',
          label: '课件质量'
        }],
        concern_category: '',
        difficulty_coefficient_options: [{
          value: '较难',
          label: '较难'
        }, {
          value: '适中',
          label: '适中'
        }, {
          value: '偏易',
          label: '偏易'
        }],
        difficulty_coefficient: ''
    }
  },
  methods: {
    clear() {
      var that = this
      that.course_key = ''
      that.concern_category = ''
      that.difficulty_coefficient = ''
      that.recommendResults = ''
      that.visible = false
      that.$message({
        showClose: true,
        message: '选择内容已清空！',
        type: 'success'
      })
    },
    recommend() {
      var that = this
      // 获取用户输入框输入的要进行情感分析的文本
      if (that.course_key === '') {
        this.$message({
          showClose: true,
          message: '选择课程不能为空',
          type: 'warning'
        })
        that.recommendResults = ''
        that.visible = false
        return
      }
      if (that.concern_category === '') {
        this.$message({
          showClose: true,
          message: '选择方面不能为空',
          type: 'warning'
        })
        that.recommendResults = ''
        that.visible = false
        return
      }
      /*
      if (that.difficulty_coefficient === '') {
        this.$message({
          showClose: true,
          message: '选择难度不能为空',
          type: 'warning'
        })
        that.recommendResults = ''
        that.visible = false
        return
      }
      */
      that.visible = true
      that.$message({
        showClose: true,
        message: '个性化推荐开始！请稍等！',
        type: 'success'
      })
      // 请求后端数据库推荐接口，请求方法为POST，请求体格式为JSON
      axios.post('http://127.0.0.1:8000/v1/dbRecommend', {
        course_key: that.course_key,
        concern_category: that.concern_category,
        difficulty_coefficient: that.difficulty_coefficient
      }).then((response) => {
        console.log(response.data)
        // 获取接口返回的推荐结果并更新界面数据
        that.recommendResults = response.data.dbRecommendResults
        that.visible = true
        that.$message({
          showClose: true,
          message: '成功为您个性化推荐课程！',
          type: 'success'
        })
      }).catch((error) => {
        // 捕获异常并弹窗提示
        console.log(error)
        that.recommendResults = ''
        that.visible = false
        that.$message({
          showClose: true,
          message: '请求异常，请检查后端服务模块！',
          type: 'error'
        })
      })
    }
  }
}
</script>

<style scoped>
  .tip {
    font-family: 宋体;
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 10px;
  }
</style>
