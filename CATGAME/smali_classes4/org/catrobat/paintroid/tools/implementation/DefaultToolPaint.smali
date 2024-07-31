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
    value = "SMAP\nDefaultToolPaint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultToolPaint.kt\norg/catrobat/paintroid/tools/implementation/DefaultToolPaint\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n1#2:120\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
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
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
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

    .line 109
    const/4 v0, 0x1

    sput-boolean v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->antialiasing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->context:Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 37
    .local v2, "$i$a$-apply-DefaultToolPaint$bitmapPaint$1":I
    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 38
    sget-boolean v3, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->antialiasing:Z

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 42
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 43
    const/high16 v3, 0x41c80000    # 25.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    nop

    .end local v1    # "$this$apply":Landroid/graphics/Paint;
    .end local v2    # "$i$a$-apply-DefaultToolPaint$bitmapPaint$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    iput-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static final synthetic access$getAntialiasing$cp()Z
    .locals 1

    .line 35
    sget-boolean v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->antialiasing:Z

    return v0
.end method

.method public static final synthetic access$setAntialiasing$cp(Z)V
    .locals 0
    .param p0, "<set-?>"    # Z

    .line 35
    sput-boolean p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->antialiasing:Z

    return-void
.end method


# virtual methods
.method public getCheckeredShader()Landroid/graphics/Shader;
    .locals 4

    .line 48
    nop

    .line 49
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    nop

    .line 50
    .local v0, "checkerboard":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v1, Landroid/graphics/Shader;

    return-object v1

    .line 53
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getColor()I
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getEraseXfermode()Landroid/graphics/PorterDuffXfermode;
    .locals 2

    .line 106
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPreviewColor()I
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getPreviewPaint()Landroid/graphics/Paint;
    .locals 4

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v1, v0

    .line 120
    .local v1, "$this$apply":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 57
    .local v2, "$i$a$-apply-DefaultToolPaint$previewPaint$1":I
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .end local v1    # "$this$apply":Landroid/graphics/Paint;
    .end local v2    # "$i$a$-apply-DefaultToolPaint$previewPaint$1":I
    return-object v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    const-string v1, "bitmapPaint.strokeCap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public setAntialiasing()V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    sget-boolean v1, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->antialiasing:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-boolean v1, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->antialiasing:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 65
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 68
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getCheckeredShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 70
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getEraseXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v1

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 72
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    :goto_0
    nop

    .line 76
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 102
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 103
    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1
    .param p1, "strokeCap"    # Landroid/graphics/Paint$Cap;

    const-string v0, "strokeCap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 95
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 96
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .param p1, "strokeWidth"    # F

    .line 81
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    sget-boolean v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->antialiasing:Z

    .line 84
    .local v0, "antiAliasing":Z
    const/4 v1, 0x1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    .end local v0    # "antiAliasing":Z
    return-void
.end method
