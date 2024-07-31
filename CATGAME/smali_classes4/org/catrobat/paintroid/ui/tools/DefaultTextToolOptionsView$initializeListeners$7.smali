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
    bv = {
        0x1,
        0x0,
        0x3
    }
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
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$7;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;

    const-string v0, "editable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$7;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->access$getFontSizeText$p(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "sizeText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 116
    .local v1, "sizeTextInt":I
    nop

    .line 117
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "exp":Ljava/lang/NumberFormatException;
    const/4 v3, 0x1

    move v2, v3

    .line 116
    .end local v2    # "exp":Ljava/lang/NumberFormatException;
    :goto_0
    move v1, v2

    .line 121
    const/16 v2, 0x12c

    if-le v1, v2, :cond_0

    .line 122
    const/16 v1, 0x12c

    .line 123
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$7;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-static {v2}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->access$getFontSizeText$p(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "300"

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$7;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-static {v2}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->access$getFontSizeText$p(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 126
    :cond_0
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$7;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-static {v2, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->access$notifyTextSizeChanged(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;I)V

    .line 127
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    return-void
.end method
