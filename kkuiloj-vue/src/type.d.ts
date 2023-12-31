declare namespace GlobalType {
    // 统一返回结果类型
    type Result<DataType> = {
        code: number
        message: string
        data: DataType
    }

    // 重新定义 InputEvent 的属性
    interface InputEventDefinition extends InputEvent {
        target: HTMLInputElement
    }

    // 代码运行结果
    type RunResult = {
        isRunning: boolean
        execResult: string
        execStatus: string
        execMessage: string
        execTime: number
        execMemory: number
    }

    // 代码提交信息
    type CodeCommitInfo = {
        questionId: string
        code: string
        lang: string
    }

    // 题目详情信息
    type QuestionDetailInfo = {
        id: string
        title: string
        description: string
        difficulty: number
        required: string
        modifiedTime: string
    }

    // 分页查询参数类型
    type TPageParams<DataType> = {
        current: number
        pageSize: number
        total: number
        data: DataType
    }
}
