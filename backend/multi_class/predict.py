from paddlenlp import Taskflow

def load_model():
    #  修改 with open(filename, 'r', encoding='utf-8') as f:
    #  task_path='../multi_class/checkpoint/export' # 需要根据执行文件换路径
    cls = Taskflow("text_classification", task_path='./multi_class/checkpoint/export', is_static_model=True)
    return cls

def predict(cls, input_list):
    # 模型预测
    results = cls(input_list)
    # print(results)
    return results

if __name__ == "__main__":
    cls = load_model()
    predict(cls, ["趣味", "启发", "画质"])
    # [{'predictions': [{'label': '风趣幽默', 'score': 0.6318651690954031}], 'text': '趣味'},
    # {'predictions': [{'label': '设计巧妙', 'score': 0.4104057479495053}], 'text': '启发'},
    # {'predictions': [{'label': '视频质量', 'score': 0.7114730453554431}], 'text': '画质'}]