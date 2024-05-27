<!-- eslint-disable indent -->
<template>
  <div class="app-container">
    <el-card class="box-card">
      <div class="tip" style="text-align: center;">
        请选择要进行数据爬取或情感分析的课程:
        <el-select v-model="course_key" placeholder="请选择课程">
        <el-option
          v-for="item in options"
          :key="item.value"
          :label="item.label"
          :value="item.value">
        </el-option>
        </el-select>
      </div>
    </el-card>
    <el-row style="text-align: center; padding-top:20px;padding-bottom:20px;">
        <el-button type="info" round @click="clear()">清空内容</el-button>
        <el-button type="success" round @click="spiderToDb()">数据爬取</el-button>
        <el-button type="primary" round @click="dbEmotionAnalysis()">情感分析</el-button>
        <!-- <el-button type="success" round @click="saveResult()">保存结果</el-button> -->
    </el-row>

    <el-card v-show="sp_visible" class="box-card">
      <div v-show="sp_visible" class="tip">
        数据爬取结果（评论部分）：
      </div>
      <el-table
        :data="spiderResults"
        height="290"
        border
        style="width: 100%"
      >
        <el-table-column
          prop="comment"
          label="评论"
        />
      </el-table>
    </el-card>

    <el-collapse v-model="collapseVisible" v-if="hasAnalysis">
      <el-collapse-item v-for="course in courses" :key="course.name" :title="course.name" :name="course.name" >
        <el-card class="box-card">
          <div class="tip">
            数据库情感分析结果：
          </div>
          <!-- 数据表格 -->
          <el-table
            id="excel"
            :data="course.analysisResults"
            height="290"
            border
            style="width: 100%"
          >
            <!-- 表格列 -->
            <el-table-column
              prop="aspect"
              label="方面"
            />
            <el-table-column
              prop="category"
              label="类别"
            />
            <el-table-column
              prop="opinions"
              label="观点"
            />
            <el-table-column
              prop="sentiment"
              label="情感"
            />
          </el-table>
          <!-- 按钮行 -->
          <el-row style="text-align: center; padding-top:20px;padding-bottom:20px;">
            <!-- 按钮触发对应的可视化功能 -->
            <el-button type="primary" round @click="aspect_wc_visual(course)">方面频率词云图</el-button>
            <el-button type="primary" round @click="aspect_hist_visual(course)">方面频率柱状图</el-button>
            <el-button type="primary" round @click="aspect_opinion_wc_visual(course)">方面+观点词云图</el-button>
            <el-button type="primary" round @click="aspect_opinion_hist_visual(course)">方面+观点柱状图</el-button>
            <el-button type="primary" round @click="aspect_sentiment_wc_visual(course)">方面+情感词云图</el-button>
            <el-button type="primary" round @click="aspect_sentiment_hist_visual(course)">方面+情感柱状图</el-button>
          </el-row>
        </el-card>

        <!-- 可视化结果 -->
        <el-card>
          <el-row v-show="course.aw_visible" class="box-card">
            <div :id="'aspect_wc' + course.name" :ref="'aspect_wc'+course.name" class="chart-container"/>
          </el-row>
          <el-row v-show="course.ah_visible" class="box-card" >
            <div :id="'aspect_hist'+course.name" :ref="'aspect_hist'+course.name" class="chart-container"/>
          </el-row>
          <el-row v-show="course.aow_visible" class="box-card">
            <div :id="'aspect_opinion_wc' + course.name" :ref="'aspect_opinion_wc'+course.name" class="chart-container"/>
          </el-row>
          <el-row v-show="course.aoh_visible" class="box-card">
            <div :id="'aspect_opinion_hist' + course.name" :ref="'aspect_opinion_hist'+course.name" class="chart-container" />
          </el-row>
          <el-row v-show="course.asw_visible" class="box-card">
            <div :id="'aspect_sentiment_wc' + course.name" :ref="'aspect_sentiment_wc'+course.name" class="chart-container" />
          </el-row>
          <el-row v-show="course.ash_visible" class="box-card">
            <div :id="'aspect_sentiment_hist' + course.name" :ref="'aspect_sentiment_hist'+course.name" class="chart-container" />
          </el-row>
        </el-card>
      </el-collapse-item>
    </el-collapse>
  </div>
</template>

<script>
import axios from 'axios'
import * as echarts from 'echarts'
import 'echarts-wordcloud'
export default {
  data() {
    return {
      courses: [
      {
        name: '数据结构',
        analysisResults: [],
        aspect_wc_data: [],
        aspect_hist_x_data: [],
        aspect_hist_y_data: [],
        aspect_opinion_wc_data: [],
        aspect_opinion_hist_x_data: [],
        aspect_opinion_hist_y_data: [],
        aspect_sentiment_wc_data: [],
        aspect_sentiment_hist_x_data: [],
        aspect_sentiment_positives: [],
        aspect_sentiment_negatives: [],
        visible: false,
        sp_visible: false,
        aw_visible: false,
        ah_visible: false,
        aow_visible: false,
        aoh_visible: false,
        asw_visible: false,
        ash_visible: false,
      },
      {
        name: '操作系统',
        analysisResults: [],
        aspect_wc_data: [],
        aspect_hist_x_data: [],
        aspect_hist_y_data: [],
        aspect_opinion_wc_data: [],
        aspect_opinion_hist_x_data: [],
        aspect_opinion_hist_y_data: [],
        aspect_sentiment_wc_data: [],
        aspect_sentiment_hist_x_data: [],
        aspect_sentiment_positives: [],
        aspect_sentiment_negatives: [],
        visible: false,
        sp_visible: false,
        aw_visible: false,
        ah_visible: false,
        aow_visible: false,
        aoh_visible: false,
        asw_visible: false,
        ash_visible: false,
      },
      {
        name: '计算机组成原理',
        analysisResults: [],
        aspect_wc_data: [],
        aspect_hist_x_data: [],
        aspect_hist_y_data: [],
        aspect_opinion_wc_data: [],
        aspect_opinion_hist_x_data: [],
        aspect_opinion_hist_y_data: [],
        aspect_sentiment_wc_data: [],
        aspect_sentiment_hist_x_data: [],
        aspect_sentiment_positives: [],
        aspect_sentiment_negatives: [],
        visible: false,
        sp_visible: false,
        aw_visible: false,
        ah_visible: false,
        aow_visible: false,
        aoh_visible: false,
        asw_visible: false,
        ash_visible: false,
      },
      {
        name: '计算机网络',
        analysisResults: [],
        aspect_wc_data: [],
        aspect_hist_x_data: [],
        aspect_hist_y_data: [],
        aspect_opinion_wc_data: [],
        aspect_opinion_hist_x_data: [],
        aspect_opinion_hist_y_data: [],
        aspect_sentiment_wc_data: [],
        aspect_sentiment_hist_x_data: [],
        aspect_sentiment_positives: [],
        aspect_sentiment_negatives: [],
        visible: false,
        sp_visible: false,
        aw_visible: false,
        ah_visible: false,
        aow_visible: false,
        aoh_visible: false,
        asw_visible: false,
        ash_visible: false,
      }
      ],
      options: [{
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
      hasAnalysis:false
    }
  },
  methods: {
    clear() {
      var that = this
      that.course_key = ''
      that.analysisResults = ''
      that.spiderResults = ''
      that.visible = false
      that.sp_visible = false
      that.$message({
        showClose: true,
        message: '选择内容已清空！',
        type: 'success'
      })
    },
    // 保存结果
    // saveResult() {
    //   var tempData = this.analysisResults
    //   if (tempData === '') {
    //     this.$message({
    //       showClose: true,
    //       message: '情感分析结果内容为空！',
    //       type: 'warning'
    //     })
    //   } else {
    //     this.Excels.exportExcel('批量情感分析结果.xlsx', '#excel')
    //     this.$message({
    //       showClose: true,
    //       message: '情感分析结果保存成功！',
    //       type: 'success'
    //     })
    //   }
    // },
    // 数据库情感分析
    dbEmotionAnalysis() {
      var that = this
      
      that.hasAnalysis = true;
      that.visible = true
      that.$message({
        showClose: true,
        message: '数据库情感分析开始！请稍等！',
        type: 'success'
      })

      this.courses.forEach(course=>{
      axios.post('http://127.0.0.1:8000/v1/dbEmotionAnalysis', {
        course_key: course.name
      }).then((response) => {
        // 获取接口返回的情感分析预测结果并更新界面数据
        course.analysisResults = response.data.dbAnalysisResults
        course.aspect_wc_data = response.data.aspect_wc_data
        course.aspect_hist_x_data = response.data.aspect_hist_x_data
        course.aspect_hist_y_data = response.data.aspect_hist_y_data
        course.aspect_opinion_wc_data = response.data.aspect_opinion_wc_data
        course.aspect_opinion_hist_x_data = response.data.aspect_opinion_hist_x_data
        course.aspect_opinion_hist_y_data = response.data.aspect_opinion_hist_y_data
        course.aspect_sentiment_wc_data = response.data.aspect_sentiment_wc_data
        course.aspect_sentiment_hist_x_data = response.data.aspect_sentiment_hist_x_data
        course.aspect_sentiment_positives = response.data.aspect_sentiment_positives
        course.aspect_sentiment_negatives = response.data.aspect_sentiment_negatives
        course.visible = true

        that.$message({
          showClose: true,
          message: '数据库情感分析'+course.name+'完成！',
          type: 'success'
        })

        
      }).catch((error) => {
        console.log(error)
        that.analysisResults = ''
        that.visible = false
        that.$message({
          showClose: true,
          message: '请求异常，请检查后端服务模块！',
          type: 'error'
        })
      })
      })
    },

    // 数据库数据爬取
    spiderToDb() {
      var that = this
      // 判断用户是否已经选择要进行数据库数据爬取的课程
      if (that.course_key === '') {
        this.$message({
          showClose: true,
          message: '请先选择要进行数据库数据爬取的课程！',
          type: 'warning'
        })
        that.spiderResults = ''
        that.sp_visible = false
        return
      }
      that.sp_visible = true
      that.$message({
        showClose: true,
        message: '数据库数据爬取开始！请稍等！',
        type: 'success'
      })
      axios.post('http://127.0.0.1:8000/v1/spiderToDb', {
        course_key: that.course_key
      }).then((response) => {
        // 获取接口返回的情感分析预测结果并更新界面数据
        that.spiderResults = response.data.spiderResults
        that.$message({
          showClose: true,
          message: '数据库数据爬取完成！',
          type: 'success'
        })
      }).catch((error) => {
        console.log(error)
        that.spiderResults = ''
        that.visible = false
        that.$message({
          showClose: true,
          message: '请求异常，请检查后端服务模块！',
          type: 'error'
        })
      })
    },

    // 数据库分析结果可视化
    // 图1
    aspect_wc_visual(course) {
      var that = course
      that.aw_visible = true; that.ah_visible = false; that.aow_visible = false;
      that.aoh_visible = false; that.asw_visible = false; that.ash_visible = false;
      var aspect_wc_chart = echarts.init(document.getElementById('aspect_wc' + course.name));
      var aspect_wc_option = {
        series: [{
          type: 'wordCloud',
          rotationRange: [-90, 90],
          rotationStep: 45,
          textStyle: {
            color: function () {
              return (
                "rgb(" +
                [
                  Math.round(Math.random() * 160),
                  Math.round(Math.random() * 160),
                  Math.round(Math.random() * 160),
                ].join(",") +
                ")"
              );
            },
          },
          data: course.aspect_wc_data
        }]
      };
      aspect_wc_chart.setOption(aspect_wc_option);
    
    },
    // 图2
    aspect_hist_visual(course) {
      var that = course
      that.aw_visible = false;  that.ah_visible = true;   that.aow_visible = false;
      that.aoh_visible = false; that.asw_visible = false; that.ash_visible = false;
      var aspect_hist_chart = echarts.init(document.getElementById('aspect_hist' + course.name));
      var aspect_hist_option = {
        title: {
          text: 'The histogram of aspect/frequency', // 设置图表标题
          left: 'center', // 居中对齐
          textStyle: {
            fontFamily: 'Arial', // 设置字体
            fontSize: 15 // 设置字体大小
          },
          top: 25 // 设置距离顶部的距离
        },
        xAxis: {
          name: 'aspect',
          nameLocation: 'middle', // 设置标题位置
          nameGap: 50, // 设置标题与轴线之间的距离
          type: 'category',
          data: course.aspect_hist_x_data,
          boundaryGap: ['10%','10%'],   //两边留白
          axisLabel: {  //x轴文字的配置
            show: true,
            interval: 0,//使x轴文字显示全
            rotate: 45
          }
        },
        yAxis: [{
          name: 'frequency',
          nameRotate: 90, // 设置标题旋转角度
          nameLocation: 'middle', // 设置标题位置
          nameGap: 20, // 设置标题与轴线之间的距离
          type: 'value',
          axisLine:{show:true},
          axisTick:{show:true}
        },
        {
          type: 'value',
          axisLine:{show:true},
          axisTick:{show:true}
        }],
        series: [{
          data: course.aspect_hist_y_data,
          type: 'bar'
        },
        {
          data: course.aspect_hist_y_data,
          type: 'line'
        }]
      };
      aspect_hist_chart.setOption(aspect_hist_option);
    },
    // 图3
    aspect_opinion_wc_visual(course) {
      var that = course
      that.aw_visible = false;  that.ah_visible = false;  that.aow_visible = true;
      that.aoh_visible = false; that.asw_visible = false; that.ash_visible = false;
      var aspect_opinion_wc_chart = echarts.init(document.getElementById('aspect_opinion_wc' + course.name));
      var aspect_opinion_wc_option = {
        series: [{
          type: 'wordCloud',
          rotationRange: [-90, 90],
          rotationStep: 45,
          textStyle: {
            color: function () {
              return (
                "rgb(" +
                [
                  Math.round(Math.random() * 160),
                  Math.round(Math.random() * 160),
                  Math.round(Math.random() * 160),
                ].join(",") +
                ")"
              );
            },
          },
          data: course.aspect_opinion_wc_data
        }]
      };
      aspect_opinion_wc_chart.setOption(aspect_opinion_wc_option);
    },
    // 图4
    aspect_opinion_hist_visual(course) {
      var that = course
      that.aw_visible = false; that.ah_visible = false;  that.aow_visible = false;
      that.aoh_visible = true; that.asw_visible = false; that.ash_visible = false;
      var aspect_opinion_hist_chart = echarts.init(document.getElementById('aspect_opinion_hist' + course.name));
      var aspect_opinion_hist_option = {
        title: {
          text: 'The histogram of aspect with opinion/frequency', // 设置图表标题
          left: 'center', // 居中对齐
          textStyle: {
            fontFamily: 'Arial', // 设置字体
            fontSize: 15 // 设置字体大小
          },
          top: 25 // 设置距离顶部的距离
        },
        xAxis: {
          name: 'aspect with opinion',
          nameLocation: 'middle', // 设置标题位置
          nameGap: 50, // 设置标题与轴线之间的距离
          type: 'category',
          data: course.aspect_opinion_hist_x_data,
          boundaryGap: ['10%','10%'],   //两边留白
          axisLabel: {  //x轴文字的配置
            show: true,
            interval: 0,//使x轴文字显示全
            rotate: 45
          }
        },
        yAxis: [{
          name: 'frequency',
          nameRotate: 90, // 设置标题旋转角度
          nameLocation: 'middle', // 设置标题位置
          nameGap: 20, // 设置标题与轴线之间的距离
          type: 'value',
          axisLine:{show:true},
          axisTick:{show:true}
        },
        {
          type: 'value',
          axisLine:{show:true},
          axisTick:{show:true},
        }],
        series: [{
          data: course.aspect_opinion_hist_y_data,
          type: 'bar'
        },
        {
          data: course.aspect_opinion_hist_y_data,
          type: 'line'
        }]
      };
      aspect_opinion_hist_chart.setOption(aspect_opinion_hist_option);
    },
    // 图5
    aspect_sentiment_wc_visual(course) {
      var that = course
      that.aw_visible = false;  that.ah_visible = false;  that.aow_visible = false;
      that.aoh_visible = false; that.asw_visible = true; that.ash_visible = false;
      var aspect_sentiment_wc_chart = echarts.init(document.getElementById('aspect_sentiment_wc' + course.name));
      var aspect_sentiment_wc_option = {
        series: [{
          type: 'wordCloud',
          rotationRange: [-90, 90],
          rotationStep: 45,
          textStyle: {
            color: function () {
              return (
                "rgb(" +
                [
                  Math.round(Math.random() * 160),
                  Math.round(Math.random() * 160),
                  Math.round(Math.random() * 160),
                ].join(",") +
                ")"
              );
            },
          },
          data: course.aspect_sentiment_wc_data
        }]
      };
      aspect_sentiment_wc_chart.setOption(aspect_sentiment_wc_option);
    },
    // 图6
    aspect_sentiment_hist_visual() {
      var that = this
      that.aw_visible = false;  that.ah_visible = false;  that.aow_visible = false;
      that.aoh_visible = false; that.asw_visible = false; that.ash_visible = true;
      var aspect_sentiment_hist_chart = echarts.init(document.getElementById('aspect_sentiment_hist_' + course.name));
      var aspect_sentiment_hist_option = {
        title: {
          text: 'The histogram of aspect/sentiment', // 设置图表标题
          left: 'center', // 居中对齐
          textStyle: {
            fontFamily: 'Arial', // 设置字体
            fontSize: 15 // 设置字体大小
          },
          top: 25 // 设置距离顶部的距离
        },
        legend: {
          data: ['positives', 'negatives']
        },
        xAxis: {
          name: 'aspect',
          nameLocation: 'middle', // 设置标题位置
          nameGap: 50, // 设置标题与轴线之间的距离
          type: 'category',
          data: course.aspect_sentiment_hist_x_data,
          boundaryGap: ['10%','10%'],   //两边留白
          axisLabel: {  //x轴文字的配置
            show: true,
            interval: 0,//使x轴文字显示全
            rotate: 45
          }
        },
        yAxis: [{
          name: 'sentiment frequency',
          nameRotate: 90, // 设置标题旋转角度
          nameLocation: 'middle', // 设置标题位置
          nameGap: 20, // 设置标题与轴线之间的距离
          type: 'value',
          axisLine:{show:true},
          axisTick:{show:true}
        },
        {
          type: 'value',
          axisLine:{show:true},
          axisTick:{show:true},
        }],
        series: [{
          name: 'positives',
          data: course.course.aspect_sentiment_positives,
          type: 'bar'
        },
        {
          name: 'negatives',
          data: course.aspect_sentiment_negatives,
          type: 'bar'
        }]
      };
      aspect_sentiment_hist_chart.setOption(aspect_sentiment_hist_option);
    }
  }
}
</script>

<style scoped>
  .tip {
    font-family: 宋体;
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 20px;
    margin-bottom: 10px;
    text-align: left;
  }
  .chart-container {
    width: 500%;
    height: 400px;
    margin-left: 400px;
  }
</style>
