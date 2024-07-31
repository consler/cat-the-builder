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
    bv = {
        0x1,
        0x0,
        0x3
    }
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
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "version"    # I

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
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;
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

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;

    return-object v0
.end method

.method public bridge synthetic readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer;->readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;

    move-result-object p1

    return-object p1
.end method

.method public readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;
    .locals 21
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;
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

    move-object/from16 v0, p2

    const-string v1, "kryo"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "input"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-object/from16 v1, p1

    .local v1, "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    const/4 v4, 0x0

    .line 52
    .local v4, "$i$a$-with-GeometricFillCommandSerializer$readCurrentVersion$1":I
    move-object/from16 v5, p2

    .local v5, "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    const/4 v6, 0x0

    .line 53
    .local v6, "$i$a$-with-GeometricFillCommandSerializer$readCurrentVersion$1$1":I
    invoke-virtual {v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    check-cast v7, Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    .line 54
    .local v7, "shape":Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v15

    .line 55
    .local v15, "pointX":I
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v16

    .line 56
    .local v16, "pointY":I
    const-class v8, Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v8}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Landroid/graphics/RectF;

    .line 57
    .local v14, "rect":Landroid/graphics/RectF;
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v17

    .line 58
    .local v17, "rotation":F
    const-class v8, Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v8}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Landroid/graphics/Paint;

    .line 59
    .local v13, "paint":Landroid/graphics/Paint;
    new-instance v18, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;

    const-string v8, "rect"

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "paint"

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, v18

    move-object v9, v7

    move v10, v15

    move/from16 v11, v16

    move-object v12, v14

    move-object/from16 v19, v13

    .end local v13    # "paint":Landroid/graphics/Paint;
    .local v19, "paint":Landroid/graphics/Paint;
    move/from16 v13, v17

    move-object/from16 v20, v14

    .end local v14    # "rect":Landroid/graphics/RectF;
    .local v20, "rect":Landroid/graphics/RectF;
    move-object/from16 v14, v19

    invoke-direct/range {v8 .. v14}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;-><init>(Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;IILandroid/graphics/RectF;FLandroid/graphics/Paint;)V

    .line 52
    .end local v5    # "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    .end local v6    # "$i$a$-with-GeometricFillCommandSerializer$readCurrentVersion$1$1":I
    .end local v7    # "shape":Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;
    .end local v15    # "pointX":I
    .end local v16    # "pointY":I
    .end local v17    # "rotation":F
    .end local v19    # "paint":Landroid/graphics/Paint;
    .end local v20    # "rect":Landroid/graphics/RectF;
    nop

    .line 51
    .end local v1    # "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    .end local v4    # "$i$a$-with-GeometricFillCommandSerializer$readCurrentVersion$1":I
    return-object v18

    .line 53
    .restart local v1    # "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    .restart local v4    # "$i$a$-with-GeometricFillCommandSerializer$readCurrentVersion$1":I
    .restart local v5    # "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    .restart local v6    # "$i$a$-with-GeometricFillCommandSerializer$readCurrentVersion$1$1":I
    :cond_0
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "null cannot be cast to non-null type org.catrobat.paintroid.tools.drawable.ShapeDrawable"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p3, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;

    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;)V
    .locals 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "command"    # Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v0, p1

    .local v0, "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    const/4 v1, 0x0

    .line 36
    .local v1, "$i$a$-with-GeometricFillCommandSerializer$write$1":I
    move-object v2, p2

    .local v2, "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    const/4 v3, 0x0

    .line 37
    .local v3, "$i$a$-with-GeometricFillCommandSerializer$write$1$1":I
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->getShapeDrawable()Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->getPointX()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 39
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->getPointY()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 40
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->getBoxRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->getBoxRotation()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 42
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 43
    nop

    .line 36
    .end local v2    # "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    .end local v3    # "$i$a$-with-GeometricFillCommandSerializer$write$1$1":I
    nop

    .line 44
    nop

    .line 35
    .end local v0    # "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    .end local v1    # "$i$a$-with-GeometricFillCommandSerializer$write$1":I
    nop

    .line 45
    return-void
.end method
