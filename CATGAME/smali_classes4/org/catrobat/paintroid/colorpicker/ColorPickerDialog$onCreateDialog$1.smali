.class final Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "it"    # Landroid/view/View;

    .line 123
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-static {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->access$getPipetteBtn$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 124
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 140
    return-void
.end method
