.class public final Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$1;
.super Ljava/lang/Object;
.source "DefaultSprayToolOptionsView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->initializeListeners()V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "org/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
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
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$1;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .line 64
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$1;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->access$getRadiusText$p(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "sizeText":Ljava/lang/String;
    nop

    .line 66
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "exp":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 69
    .local v3, "$i$a$-let-DefaultSprayToolOptionsView$initializeListeners$1$afterTextChanged$sizeTextInt$1":I
    invoke-static {}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-DefaultSprayToolOptionsView$initializeListeners$1$afterTextChanged$sizeTextInt$1":I
    nop

    .line 71
    :cond_0
    const/4 v2, 0x1

    move v1, v2

    .line 65
    .end local v1    # "exp":Ljava/lang/NumberFormatException;
    :goto_0
    nop

    .line 73
    .local v1, "sizeTextInt":I
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$1;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-static {v2}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->access$getRadiusSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 74
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 77
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 79
    return-void
.end method
