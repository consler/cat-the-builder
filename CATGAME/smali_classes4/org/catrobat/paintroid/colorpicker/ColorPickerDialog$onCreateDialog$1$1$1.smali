.class final Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ColorPickerDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "org.catrobat.paintroid.colorpicker.ColorPickerDialog$onCreateDialog$1$1$1"
    f = "ColorPickerDialog.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;

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

    new-instance v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;

    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;

    invoke-direct {v0, v1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 126
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 127
    .local v0, "this":Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;

    iget-object v1, v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;

    iget-object v1, v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-static {v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->access$getPipetteBtn$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 128
    new-instance v1, Landroid/content/Intent;

    iget-object v3, v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;

    iget-object v3, v3, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;->$it:Landroid/view/View;

    const-string v4, "it"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v1

    .local v3, "$this$apply":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 129
    .local v4, "$i$a$-apply-ColorPickerDialog$onCreateDialog$1$1$1$intent$1":I
    iget-object v5, v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;

    iget-object v5, v5, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;

    iget-object v5, v5, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-static {v5}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->access$getColorToApply$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)I

    move-result v5

    const-string v6, "colorExtra"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    iget-object v5, v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;

    iget-object v5, v5, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;

    iget-object v5, v5, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-static {v5}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->access$getCurrentBitmap$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const-string v6, "bitmapHeightNameExtra"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    iget-object v5, v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;

    iget-object v5, v5, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;

    iget-object v5, v5, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-static {v5}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->access$getCurrentBitmap$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const-string v6, "bitmapWidthNameExtra"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    .end local v3    # "$this$apply":Landroid/content/Intent;
    nop

    .line 128
    .end local v4    # "$i$a$-apply-ColorPickerDialog$onCreateDialog$1$1$1$intent$1":I
    nop

    .line 133
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 134
    :try_start_0
    iget-object v3, v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;

    iget-object v3, v3, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;

    iget-object v3, v3, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-virtual {v3, v1, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-static {}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 138
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .end local v0    # "this":Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
