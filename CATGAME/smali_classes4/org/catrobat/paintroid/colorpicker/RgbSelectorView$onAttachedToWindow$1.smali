.class public final Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$1;
.super Ljava/lang/Object;
.source "RgbSelectorView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->onAttachedToWindow()V
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
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J(\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J(\u0010\r\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "org/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "newText",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "s",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "colorpicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "newText"    # Landroid/text/Editable;

    const-string v0, "newText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-static {v0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->access$getEditTextHex$p(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->access$parseInputToCheckIfHEX(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, "color":I
    const v1, 0x1312d00

    if-eq v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-virtual {v1, v0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setSelectedColor(I)V

    .line 214
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-static {v1, v0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->access$onColorChanged(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;I)V

    .line 215
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-static {v1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->access$resetTextColor(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-static {v1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->access$setTextColorToRed(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;)V

    .line 218
    .end local v0    # "color":I
    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-static {v0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->access$resetTextColor(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;)V

    .line 221
    :goto_0
    nop

    .line 222
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    return-void
.end method
