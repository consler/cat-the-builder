.class public final Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$7;
.super Ljava/lang/Object;
.source "DefaultTextToolOptionsView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->initializeListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J(\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J(\u0010\r\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "org/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$7",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "editable",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "charSequence",
        "",
        "i",
        "",
        "i1",
        "i2",
        "onTextChanged",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$7;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const-string v0, "editable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$7;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-static {p1}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->access$getFontSizeText$p(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x12c

    if-le p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$7;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-static {p1}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->access$getFontSizeText$p(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;)Landroid/widget/EditText;

    move-result-object p1

    const-string v1, "300"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$7;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-static {p1}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->access$getFontSizeText$p(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    move p1, v0

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$7;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-static {v0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->access$notifyTextSizeChanged(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "charSequence"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "charSequence"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
