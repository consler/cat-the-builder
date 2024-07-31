.class public interface abstract Lorg/catrobat/paintroid/tools/ContextCallback;
.super Ljava/lang/Object;
.source "ContextCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;,
        Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0002\u001f J\u0012\u0010\u0012\u001a\u00020\u000f2\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u000fH\'J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u000fH&J\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u000fH&J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u000fH&J\u001a\u0010\u001c\u001a\u00020\u001a2\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u001eH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006!"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/ContextCallback;",
        "",
        "checkeredBitmapShader",
        "Landroid/graphics/Shader;",
        "getCheckeredBitmapShader",
        "()Landroid/graphics/Shader;",
        "displayMetrics",
        "Landroid/util/DisplayMetrics;",
        "getDisplayMetrics",
        "()Landroid/util/DisplayMetrics;",
        "orientation",
        "Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;",
        "getOrientation",
        "()Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;",
        "scrollTolerance",
        "",
        "getScrollTolerance",
        "()I",
        "getColor",
        "id",
        "getDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "resource",
        "getFont",
        "Landroid/graphics/Typeface;",
        "showNotification",
        "",
        "resId",
        "showNotificationWithDuration",
        "duration",
        "Lorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;",
        "NotificationDuration",
        "ScreenOrientation",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract getCheckeredBitmapShader()Landroid/graphics/Shader;
.end method

.method public abstract getColor(I)I
.end method

.method public abstract getDisplayMetrics()Landroid/util/DisplayMetrics;
.end method

.method public abstract getDrawable(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getFont(I)Landroid/graphics/Typeface;
.end method

.method public abstract getOrientation()Lorg/catrobat/paintroid/tools/ContextCallback$ScreenOrientation;
.end method

.method public abstract getScrollTolerance()I
.end method

.method public abstract showNotification(I)V
.end method

.method public abstract showNotificationWithDuration(ILorg/catrobat/paintroid/tools/ContextCallback$NotificationDuration;)V
.end method
