.class public interface abstract Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;
.super Ljava/lang/Object;
.source "TextToolOptionsView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/options/TextToolOptionsView$Callback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0001\u0016J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH&J8\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H&J\u0008\u0010\u0015\u001a\u00020\u0006H&\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;",
        "",
        "getBottomLayout",
        "Landroid/view/View;",
        "getTopLayout",
        "hideKeyboard",
        "",
        "setCallback",
        "listener",
        "Lorg/catrobat/paintroid/tools/options/TextToolOptionsView$Callback;",
        "setState",
        "bold",
        "",
        "italic",
        "underlined",
        "text",
        "",
        "textSize",
        "",
        "fontType",
        "Lorg/catrobat/paintroid/tools/FontType;",
        "showKeyboard",
        "Callback",
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


# virtual methods
.method public abstract getBottomLayout()Landroid/view/View;
.end method

.method public abstract getTopLayout()Landroid/view/View;
.end method

.method public abstract hideKeyboard()V
.end method

.method public abstract setCallback(Lorg/catrobat/paintroid/tools/options/TextToolOptionsView$Callback;)V
.end method

.method public abstract setState(ZZZLjava/lang/String;ILorg/catrobat/paintroid/tools/FontType;)V
.end method

.method public abstract showKeyboard()V
.end method
