.class public interface abstract Lorg/catrobat/paintroid/tools/ToolPaint;
.super Ljava/lang/Object;
.source "ToolPaint.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010&\u001a\u00020\'H&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u00020\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0010\u001a\u00020\u0011X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\tR\u0012\u0010\u0018\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0013R\u0018\u0010\u001a\u001a\u00020\u001bX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0018\u0010 \u001a\u00020!X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006("
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/ToolPaint;",
        "",
        "checkeredShader",
        "Landroid/graphics/Shader;",
        "getCheckeredShader",
        "()Landroid/graphics/Shader;",
        "color",
        "",
        "getColor",
        "()I",
        "setColor",
        "(I)V",
        "eraseXfermode",
        "Landroid/graphics/PorterDuffXfermode;",
        "getEraseXfermode",
        "()Landroid/graphics/PorterDuffXfermode;",
        "paint",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "setPaint",
        "(Landroid/graphics/Paint;)V",
        "previewColor",
        "getPreviewColor",
        "previewPaint",
        "getPreviewPaint",
        "strokeCap",
        "Landroid/graphics/Paint$Cap;",
        "getStrokeCap",
        "()Landroid/graphics/Paint$Cap;",
        "setStrokeCap",
        "(Landroid/graphics/Paint$Cap;)V",
        "strokeWidth",
        "",
        "getStrokeWidth",
        "()F",
        "setStrokeWidth",
        "(F)V",
        "setAntialiasing",
        "",
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
.method public abstract getCheckeredShader()Landroid/graphics/Shader;
.end method

.method public abstract getColor()I
.end method

.method public abstract getEraseXfermode()Landroid/graphics/PorterDuffXfermode;
.end method

.method public abstract getPaint()Landroid/graphics/Paint;
.end method

.method public abstract getPreviewColor()I
.end method

.method public abstract getPreviewPaint()Landroid/graphics/Paint;
.end method

.method public abstract getStrokeCap()Landroid/graphics/Paint$Cap;
.end method

.method public abstract getStrokeWidth()F
.end method

.method public abstract setAntialiasing()V
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setPaint(Landroid/graphics/Paint;)V
.end method

.method public abstract setStrokeCap(Landroid/graphics/Paint$Cap;)V
.end method

.method public abstract setStrokeWidth(F)V
.end method
