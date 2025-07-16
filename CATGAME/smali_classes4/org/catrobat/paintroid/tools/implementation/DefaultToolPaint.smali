.class public final Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;
.super Ljava/lang/Object;
.source "DefaultToolPaint.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/ToolPaint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultToolPaint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultToolPaint.kt\norg/catrobat/paintroid/tools/implementation/DefaultToolPaint\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 ,2\u00020\u0001:\u0001,B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010*\u001a\u00020+H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR$\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R$\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u000eR\u0014\u0010\u001c\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0017R$\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001f8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010$\u001a\u00020%2\u0006\u0010$\u001a\u00020%8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;",
        "Lorg/catrobat/paintroid/tools/ToolPaint;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "bitmapPaint",
        "Landroid/graphics/Paint;",
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
        "Companion",
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


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;

.field private static antialiasing:Z


# instance fields
.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->Companion:Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;

    const/4 v0, 0x1

    .line 110
    sput-boolean v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->antialiasing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->context:Landroid/content/Context;

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    .line 39
    sget-boolean v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->antialiasing:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v0, -0x1000000

    .line 40
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 43
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v0, 0x41c80000    # 25.0f

    .line 44
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static final synthetic access$getAntialiasing$cp()Z
    .locals 1

    .line 36
    sget-boolean v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->antialiasing:Z

    return v0
.end method

.method public static final synthetic access$setAntialiasing$cp(Z)V
    .locals 0

    .line 36
    sput-boolean p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->antialiasing:Z

    return-void
.end method


# virtual methods
.method public getCheckeredShader()Landroid/graphics/Shader;
    .locals 4

    .line 50
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v1, Landroid/graphics/Shader;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getEraseXfermode()Landroid/graphics/PorterDuffXfermode;
    .locals 2

    .line 107
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPreviewColor()I
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getPreviewPaint()Landroid/graphics/Paint;
    .locals 2

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    const-string v1, "bitmapPaint.strokeCap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public setAntialiasing()V
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    sget-boolean v1, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->antialiasing:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-boolean v1, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->antialiasing:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public setColor(I)V
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 68
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 69
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-nez p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getCheckeredShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 71
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getEraseXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v0

    check-cast v0, Landroid/graphics/Xfermode;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 73
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_0
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 103
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    const-string v0, "strokeCap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    sget-boolean v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->antialiasing:Z

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    const/4 v0, 0x0

    .line 88
    :cond_0
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method
