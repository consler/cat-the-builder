.class public final Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer;
.super Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
.source "GeometricFillCommandSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer$HeartDrawableSerializer;,
        Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer$OvalDrawableSerializer;,
        Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer$RectangleDrawableSerializer;,
        Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer$StarDrawableSerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer<",
        "Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0013\u0014\u0015\u0016B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J(\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000cH\u0016J(\u0010\r\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000cH\u0016J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer;",
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer;",
        "Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;",
        "version",
        "",
        "(I)V",
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
        "HeartDrawableSerializer",
        "OvalDrawableSerializer",
        "RectangleDrawableSerializer",
        "StarDrawableSerializer",
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


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;",
            ">;)",
            "Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;

    invoke-super {p0, v0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;->handleVersions(Lorg/catrobat/paintroid/command/serialization/VersionSerializer;Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;

    return-object p1
.end method

.method public bridge synthetic readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer;->readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;

    move-result-object p1

    return-object p1
.end method

.method public readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;",
            ">;)",
            "Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    move-object v1, p3

    check-cast v1, Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    .line 54
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    .line 55
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v3

    .line 56
    const-class p3, Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Landroid/graphics/RectF;

    .line 57
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v5

    .line 58
    const-class p3, Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/graphics/Paint;

    .line 59
    new-instance p1, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;

    const-string p2, "rect"

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "paint"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;-><init>(Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;IILandroid/graphics/RectF;FLandroid/graphics/Paint;)V

    return-object p1

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type org.catrobat.paintroid.tools.drawable.ShapeDrawable"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p3, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;

    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;)V
    .locals 1

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->getShapeDrawable()Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->getPointX()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 39
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->getPointY()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 40
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->getBoxRotation()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 42
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
