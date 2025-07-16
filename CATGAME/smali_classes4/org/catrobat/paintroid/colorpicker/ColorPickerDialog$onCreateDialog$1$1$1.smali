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
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
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
.field final synthetic $it:Landroid/view/View;

.field label:I

.field final synthetic this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;",
            "Landroid/view/View;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    iput-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->$it:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;

    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->$it:Landroid/view/View;

    invoke-direct {p1, v0, v1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 161
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 162
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-static {p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->access$getPipetteBtn$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "pipetteBtn"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 163
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->$it:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/catrobat/paintroid/colorpicker/ColorPickerPreviewActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    const-string v3, "colorExtra"

    .line 164
    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->access$getColorToApply$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->access$getCurrentBitmap$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v4, "currentBitmap"

    if-nez v3, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v0

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const-string v5, "bitmapHeightNameExtra"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->access$getCurrentBitmap$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const-string v2, "bitmapWidthNameExtra"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 171
    invoke-static {}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreateDialog: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
