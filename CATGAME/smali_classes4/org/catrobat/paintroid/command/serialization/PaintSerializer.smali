.class public final Lorg/catrobat/paintroid/command/serialization/PaintSerializer;
.super Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
.source "PaintSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J(\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000eH\u0016J(\u0010\u000f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000eH\u0016J6\u0010\u0010\u001a\u00020\u00022\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000eH\u0014J \u0010\u0012\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0002H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/PaintSerializer;",
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer;",
        "Landroid/graphics/Paint;",
        "version",
        "",
        "activityContext",
        "Landroid/content/Context;",
        "(ILandroid/content/Context;)V",
        "read",
        "kryo",
        "Lcom/esotericsoftware/kryo/Kryo;",
        "input",
        "Lcom/esotericsoftware/kryo/io/Input;",
        "type",
        "Ljava/lang/Class;",
        "readCurrentVersion",
        "readV1",
        "serializer",
        "write",
        "",
        "output",
        "Lcom/esotericsoftware/kryo/io/Output;",
        "paint",
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
.field private final activityContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    const-string v0, "activityContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;-><init>(I)V

    iput-object p2, p0, Lorg/catrobat/paintroid/command/serialization/PaintSerializer;->activityContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Landroid/graphics/Paint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/graphics/Paint;",
            ">;)",
            "Landroid/graphics/Paint;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;

    invoke-super {p0, v0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;->handleVersions(Lorg/catrobat/paintroid/command/serialization/VersionSerializer;Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Paint;

    return-object p1
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/PaintSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Landroid/graphics/Paint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/graphics/Paint;",
            ">;)",
            "Landroid/graphics/Paint;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "input"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "type"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance p1, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;

    iget-object p3, p0, Lorg/catrobat/paintroid/command/serialization/PaintSerializer;->activityContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->setColor(I)V

    .line 70
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p3

    invoke-virtual {p1, p3}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->setStrokeWidth(F)V

    .line 71
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object p3

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 75
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    .line 77
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    invoke-static {}, Landroid/graphics/Paint$Style;->values()[Landroid/graphics/Paint$Style;

    move-result-object p3

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object p3

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 80
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p3

    .line 81
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz p3, :cond_0

    .line 82
    new-instance p2, Landroid/graphics/BlurMaskFilter;

    sget-object p3, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;->Companion:Lorg/catrobat/paintroid/tools/implementation/WatercolorTool$Companion;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    invoke-virtual {p3, v0}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool$Companion;->calcRange(I)F

    move-result p3

    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p2, p3, v0}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    check-cast p2, Landroid/graphics/MaskFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/PaintSerializer;->readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method protected readV1(Lorg/catrobat/paintroid/command/serialization/VersionSerializer;Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Landroid/graphics/Paint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/paintroid/command/serialization/VersionSerializer<",
            "Landroid/graphics/Paint;",
            ">;",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/graphics/Paint;",
            ">;)",
            "Landroid/graphics/Paint;"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "kryo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "input"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "type"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance p1, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;

    iget-object p2, p0, Lorg/catrobat/paintroid/command/serialization/PaintSerializer;->activityContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->setColor(I)V

    .line 52
    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->setStrokeWidth(F)V

    .line 53
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object p2

    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p4

    aget-object p2, p2, p4

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 57
    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    .line 59
    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    invoke-static {}, Landroid/graphics/Paint$Style;->values()[Landroid/graphics/Paint$Style;

    move-result-object p2

    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p4

    aget-object p2, p2, p4

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object p2

    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p3

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-object p1
.end method

.method public bridge synthetic readV1(Lorg/catrobat/paintroid/command/serialization/VersionSerializer;Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/command/serialization/PaintSerializer;->readV1(Lorg/catrobat/paintroid/command/serialization/VersionSerializer;Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "output"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "paint"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 35
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 36
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 37
    invoke-virtual {p3}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    .line 38
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint$Style;->ordinal()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 39
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint$Join;->ordinal()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 40
    invoke-virtual {p3}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    .line 41
    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p3, Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/PaintSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Landroid/graphics/Paint;)V

    return-void
.end method
