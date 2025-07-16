.class public final Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;
.super Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
.source "TextToolCommandSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer<",
        "Lorg/catrobat/paintroid/command/implementation/TextToolCommand;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J(\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000eH\u0016J(\u0010\u000f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000eH\u0016J \u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;",
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer;",
        "Lorg/catrobat/paintroid/command/implementation/TextToolCommand;",
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
        "write",
        "",
        "output",
        "Lcom/esotericsoftware/kryo/io/Output;",
        "command",
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

    .line 34
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;-><init>(I)V

    iput-object p2, p0, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;->activityContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/TextToolCommand;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/TextToolCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/paintroid/command/implementation/TextToolCommand;",
            ">;)",
            "Lorg/catrobat/paintroid/command/implementation/TextToolCommand;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;

    invoke-super {p0, v0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;->handleVersions(Lorg/catrobat/paintroid/command/serialization/VersionSerializer;Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;

    return-object p1
.end method

.method public bridge synthetic readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;->readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/TextToolCommand;

    move-result-object p1

    return-object p1
.end method

.method public readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/TextToolCommand;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/paintroid/command/implementation/TextToolCommand;",
            ">;)",
            "Lorg/catrobat/paintroid/command/implementation/TextToolCommand;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const-class p3, [Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, [Ljava/lang/String;

    .line 57
    const-class p3, Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v3

    .line 59
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v4

    .line 60
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v5

    .line 61
    const-class p3, Landroid/graphics/PointF;

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/graphics/PointF;

    .line 62
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v7

    .line 63
    const-class p3, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    .line 66
    invoke-virtual {v8}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getBold()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 67
    invoke-virtual {v8}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getUnderline()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 68
    invoke-virtual {v8}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getTextSize()F

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    invoke-virtual {v8}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getTextSkewX()F

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 70
    invoke-virtual {v8}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getItalic()Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 72
    :goto_0
    :try_start_0
    invoke-virtual {v8}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getFont()Lorg/catrobat/paintroid/tools/FontType;

    move-result-object p3

    sget-object v0, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lorg/catrobat/paintroid/tools/FontType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_5

    if-eq p3, p2, :cond_4

    const/4 p2, 0x3

    if-eq p3, p2, :cond_3

    const/4 p2, 0x4

    if-eq p3, p2, :cond_2

    const/4 p2, 0x5

    if-ne p3, p2, :cond_1

    .line 77
    iget-object p2, p0, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;->activityContext:Landroid/content/Context;

    sget p3, Lorg/catrobat/paintroid/R$font;->dubai:I

    invoke-static {p2, p3}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p2

    .line 76
    :cond_2
    iget-object p2, p0, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;->activityContext:Landroid/content/Context;

    sget p3, Lorg/catrobat/paintroid/R$font;->stc_regular:I

    invoke-static {p2, p3}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_1

    .line 75
    :cond_3
    sget-object p2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_1

    .line 74
    :cond_4
    sget-object p2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_1

    .line 73
    :cond_5
    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p2, "LoadImageAsync"

    const-string p3, "Typeface not supported on this mobile phone"

    .line 80
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 71
    :goto_1
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 84
    new-instance p1, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;

    const-string p2, "text"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "paint"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "position"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "typeFaceInfo"

    invoke-static {v8, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;-><init>([Ljava/lang/String;Landroid/graphics/Paint;FFFLandroid/graphics/PointF;FLorg/catrobat/paintroid/command/serialization/SerializableTypeface;)V

    return-object p1
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p3, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;

    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/implementation/TextToolCommand;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/implementation/TextToolCommand;)V
    .locals 1

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getMultilineText()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getBoxOffset()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 41
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getBoxWidth()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 42
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getBoxHeight()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 43
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getToolPosition()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getRotationAngle()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 45
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getTypeFaceInfo()Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
