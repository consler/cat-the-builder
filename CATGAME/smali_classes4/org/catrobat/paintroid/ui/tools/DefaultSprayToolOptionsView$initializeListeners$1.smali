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
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$1;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$1;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-static {p1}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->access$getRadiusText$p(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 67
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    .line 74
    :goto_1
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$1;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->access$getRadiusSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
