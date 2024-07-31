.class final Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SpeechRecognitionHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.catrobat.catroid.stage.SpeechRecognitionHolder$startListening$1"
    f = "SpeechRecognitionHolder.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;->this$0:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;->this$0:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    invoke-direct {v0, v1, p2}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;-><init>(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 140
    iget v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 141
    .local v0, "this":Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;->this$0:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    invoke-static {v1}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->access$getSpeechRecognizer$p(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    iget-object v2, v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;->this$0:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    invoke-static {v2}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->access$getListener$p(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;)Landroid/speech/RecognitionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 142
    iget-object v1, v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;->this$0:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    invoke-static {v1}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->access$getSpeechRecognizer$p(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    iget-object v2, v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;->this$0:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    invoke-static {v2}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->access$getSpeechIntent$p(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 143
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .end local v0    # "this":Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
