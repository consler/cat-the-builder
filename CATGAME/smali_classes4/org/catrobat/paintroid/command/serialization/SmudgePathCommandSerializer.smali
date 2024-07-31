.class public final Lorg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer;
.super Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
.source "SmudgePathCommandSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer<",
        "Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmudgePathCommandSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmudgePathCommandSerializer.kt\norg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,70:1\n1819#2,2:71\n*E\n*S KotlinDebug\n*F\n+ 1 SmudgePathCommandSerializer.kt\norg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer\n*L\n40#1,2:71\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J(\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000cH\u0016J(\u0010\r\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000cH\u0016J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer;",
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer;",
        "Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;",
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
.field private static final COMPRESSION_QUALITY:I = 0x64

.field public static final Companion:Lorg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer;->Companion:Lorg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "version"    # I

    .line 29
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;
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
            "Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;",
            ">;)",
            "Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;"
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

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;

    return-object v0
.end method

.method public bridge synthetic readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer;->readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;

    move-result-object p1

    return-object p1
.end method

.method public readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;
    .locals 20
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
            "Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;",
            ">;)",
            "Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;"
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

    .line 54
    move-object/from16 v1, p1

    .local v1, "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    const/4 v4, 0x0

    .line 55
    .local v4, "$i$a$-with-SmudgePathCommandSerializer$readCurrentVersion$1":I
    move-object/from16 v5, p2

    .local v5, "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    const/4 v6, 0x0

    .line 56
    .local v6, "$i$a$-with-SmudgePathCommandSerializer$readCurrentVersion$1$1":I
    move-object v7, v0

    check-cast v7, Ljava/io/InputStream;

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 57
    .local v7, "originalBitmap":Landroid/graphics/Bitmap;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v8

    check-cast v14, Ljava/util/List;

    .line 58
    .local v14, "pointPath":Ljava/util/List;
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v15

    .line 59
    .local v15, "size":I
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v15, :cond_0

    move v9, v8

    .local v9, "it":I
    const/4 v10, 0x0

    .line 60
    .local v10, "$i$a$-repeat-SmudgePathCommandSerializer$readCurrentVersion$1$1$1":I
    const-class v11, Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v11}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "readObject(input, PointF::class.java)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    nop

    .line 59
    .end local v9    # "it":I
    .end local v10    # "$i$a$-repeat-SmudgePathCommandSerializer$readCurrentVersion$1$1$1":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v16

    .line 63
    .local v16, "maxPressure":F
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v17

    .line 64
    .local v17, "maxSize":F
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v18

    .line 65
    .local v18, "minSize":F
    new-instance v19, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;

    const-string v8, "originalBitmap"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, v19

    move-object v9, v7

    move-object v10, v14

    move/from16 v11, v16

    move/from16 v12, v17

    move/from16 v13, v18

    invoke-direct/range {v8 .. v13}, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;-><init>(Landroid/graphics/Bitmap;Ljava/util/List;FFF)V

    .line 55
    .end local v5    # "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    .end local v6    # "$i$a$-with-SmudgePathCommandSerializer$readCurrentVersion$1$1":I
    .end local v7    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "pointPath":Ljava/util/List;
    .end local v15    # "size":I
    .end local v16    # "maxPressure":F
    .end local v17    # "maxSize":F
    .end local v18    # "minSize":F
    nop

    .line 54
    .end local v1    # "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    .end local v4    # "$i$a$-with-SmudgePathCommandSerializer$readCurrentVersion$1":I
    return-object v19
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p3, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;

    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;)V
    .locals 10
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "command"    # Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    move-object v0, p1

    .local v0, "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    const/4 v1, 0x0

    .line 37
    .local v1, "$i$a$-with-SmudgePathCommandSerializer$write$1":I
    move-object v2, p2

    .local v2, "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    const/4 v3, 0x0

    .line 38
    .local v3, "$i$a$-with-SmudgePathCommandSerializer$write$1$1":I
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->getOriginalBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v6, p2

    check-cast v6, Ljava/io/OutputStream;

    const/16 v7, 0x64

    invoke-virtual {v4, v5, v7, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 39
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->getPointPath()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 40
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->getPointPath()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 71
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroid/graphics/PointF;

    .local v8, "it":Landroid/graphics/PointF;
    const/4 v9, 0x0

    .line 41
    .local v9, "$i$a$-forEach-SmudgePathCommandSerializer$write$1$1$1":I
    invoke-virtual {v0, p2, v8}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 42
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    .end local v8    # "it":Landroid/graphics/PointF;
    .end local v9    # "$i$a$-forEach-SmudgePathCommandSerializer$write$1$1$1":I
    goto :goto_0

    .line 72
    :cond_0
    nop

    .line 43
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->getMaxPressure()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 44
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->getMaxSize()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 45
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;->getMinSize()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 46
    nop

    .line 37
    .end local v2    # "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    .end local v3    # "$i$a$-with-SmudgePathCommandSerializer$write$1$1":I
    nop

    .line 47
    nop

    .line 36
    .end local v0    # "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    .end local v1    # "$i$a$-with-SmudgePathCommandSerializer$write$1":I
    nop

    .line 48
    return-void
.end method
