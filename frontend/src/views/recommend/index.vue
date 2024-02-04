<template>
  <div class="app-container">
    <el-card class="box-card">
      <div class="tip" style="text-align: center;">
        您感兴趣的课程:
        <el-select v-model="course_value" placeholder="请选择课程" style="padding-top:10px; padding-bottom:10px;">
        <el-option
          v-for="item in course_options"
          :key="item.value"
          :label="item.label"
          :value="item.value">
        </el-option>
        </el-select>
        <br/>
        您最关注的方面:
        <el-select v-model="concern_category_value" placeholder="请选择您关注的方面" style="padding-top:10px; padding-bottom:10px;">
        <el-option
          v-for="item in concern_category_options"
          :key="item.value"
          :label="item.label"
          :value="item.value">
        </el-option>
        </el-select>
        <br/>
        您最适合的难度:
        <el-select v-model="difficulty_coefficient_value" placeholder="请选择您适合的难度" style="padding-top:10px; padding-bottom:10px;">
        <el-option
          v-for="item in difficulty_coefficient_options"
          :key="item.value"
          :label="item.label"
          :value="item.value">
        </el-option>
        </el-select>
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
        :data="analysisResult"
        height="290"
        border
        style="width: 100%"
      >
        <el-table-column
          prop="aspect"
          label="方面"
          width="180"
        />
        <el-table-column
          prop="opinions"
          label="观点"
        />
        <el-table-column
          prop="sentiment"
          label="情感倾向"
          width="180"
        />
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
      analysisResult: '', // 情感分析结果
      stage: false,
      visible: false, // 设置情感分析结果的可见性
      course_options: [{
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
        course_value: '',
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
        concern_category_value: '',
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
        difficulty_coefficient_value: ''
    }
  },
  methods: {
    clear() {
      var that = this
      that.course_value = ''
      that.concern_category_value = ''
      that.difficulty_coefficient_value = ''
      that.analysisResult = ''
      that.visible = false
      that.$message({
        showClose: true,
        message: '选择内容已清空！',
        type: 'success'
      })
    },
    emotionAnalysis() {
      var that = this
      // 获取用户输入框输入的要进行情感分析的文本
      var context = that.textarea
      if (context === '') {
        this.$message({
          showClose: true,
          message: '输入文本内容不能为空',
          type: 'warning'
        })
        that.analysisResult = ''
        that.visible = false
      } else {
        // 请求后端单文本情感分析接口，请求方法为POST，请求体格式为JSON，字段text为要进行情感分析的文本
        axios.post('http://127.0.0.1:8000/v1/singleEmotionAnalysis', {
          text: that.textarea
        }).then((response) => {
          console.log(response.data)
          // 获取接口返回的情感分析预测结果并更新界面数据
          that.analysisResult = response.data.singleAnalysisResult
          that.visible = true
          that.$message({
            showClose: true,
            message: '方面级情感分析完成！',
            type: 'success'
          })
        }).catch((error) => {
          // 捕获异常并弹窗提示
          console.log(error)
          that.analysisResult = ''
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
