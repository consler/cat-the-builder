.class public final Lorg/catrobat/paintroid/command/serialization/StampCommandSerializer;
.super Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
.source "StampCommandSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/serialization/StampCommandSerializer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer<",
        "Lorg/catrobat/paintroid/command/implementation/StampCommand;",
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J(\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000cH\u0016J(\u0010\r\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000cH\u0016J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/StampCommandSerializer;",
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer;",
        "Lorg/catrobat/paintroid/command/implementation/StampCommand;",
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

.field public static final Companion:Lorg/catrobat/paintroid/command/serialization/StampCommandSerializer$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/command/serialization/StampCommandSerializer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/command/serialization/StampCommandSerializer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/command/serialization/StampCommandSerializer;->Companion:Lorg/catrobat/paintroid/command/serialization/StampCommandSerializer$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "version"    # I

    .line 31
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/StampCommandSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/StampCommand;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/StampCommand;
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
            "Lorg/catrobat/paintroid/command/implementation/StampCommand;",
            ">;)",
            "Lorg/catrobat/paintroid/command/implementation/StampCommand;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;

    invoke-super {p0, v0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;->handleVersions(Lorg/catrobat/paintroid/command/serialization/VersionSerializer;Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/implementation/StampCommand;

    return-object v0
.end method

.method public bridge synthetic readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/StampCommandSerializer;->readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/StampCommand;

    move-result-object p1

    return-object p1
.end method

.method public readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/StampCommand;
    .locals 19
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
            "Lorg/catrobat/paintroid/command/implementation/StampCommand;",
            ">;)",
            "Lorg/catrobat/paintroid/command/implementation/StampCommand;"
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

    .line 57
    move-object/from16 v1, p1

    .local v1, "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    const/4 v4, 0x0

    .line 58
    .local v4, "$i$a$-with-StampCommandSerializer$readCurrentVersion$1":I
    move-object/from16 v5, p2

    .local v5, "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    const/4 v6, 0x0

    .line 59
    .local v6, "$i$a$-with-StampCommandSerializer$readCurrentVersion$1$1":I
    move-object v7, v0

    check-cast v7, Ljava/io/InputStream;

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 60
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const-class v8, Landroid/graphics/Point;

    invoke-virtual {v1, v0, v8}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Landroid/graphics/Point;

    .line 61
    .local v14, "coordinates":Landroid/graphics/Point;
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v15

    .line 62
    .local v15, "width":F
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v16

    .line 63
    .local v16, "height":F
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v17

    .line 64
    .local v17, "rotation":F
    new-instance v18, Lorg/catrobat/paintroid/command/implementation/StampCommand;

    const-string v8, "bitmap"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "coordinates"

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, v18

    move-object v9, v7

    move-object v10, v14

    move v11, v15

    move/from16 v12, v16

    move/from16 v13, v17

    invoke-direct/range {v8 .. v13}, Lorg/catrobat/paintroid/command/implementation/StampCommand;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Point;FFF)V

    .line 58
    .end local v5    # "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    .end local v6    # "$i$a$-with-StampCommandSerializer$readCurrentVersion$1$1":I
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "coordinates":Landroid/graphics/Point;
    .end local v15    # "width":F
    .end local v16    # "height":F
    .end local v17    # "rotation":F
    nop

    .line 57
    .end local v1    # "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    .end local v4    # "$i$a$-with-StampCommandSerializer$readCurrentVersion$1":I
    return-object v18
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p3, Lorg/catrobat/paintroid/command/implementation/StampCommand;

    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/StampCommandSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/implementation/StampCommand;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/implementation/StampCommand;)V
    .locals 8
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "command"    # Lorg/catrobat/paintroid/command/implementation/StampCommand;

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    move-object v0, p1

    .local v0, "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    const/4 v1, 0x0

    .line 39
    .local v1, "$i$a$-with-StampCommandSerializer$write$1":I
    move-object v2, p2

    .local v2, "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    const/4 v3, 0x0

    .line 40
    .local v3, "$i$a$-with-StampCommandSerializer$write$1$1":I
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/StampCommand;->getFileToStoredBitmap()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 41
    .local v5, "$i$a$-let-StampCommandSerializer$write$1$1$bitmap$1":I
    sget-object v6, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v6, v4}, Lorg/catrobat/paintroid/FileIO;->getBitmapFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 40
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "$i$a$-let-StampCommandSerializer$write$1$1$bitmap$1":I
    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 43
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v4, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/StampCommand;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_2

    move-object v4, v5

    .line 44
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    move-object v7, p2

    check-cast v7, Ljava/io/OutputStream;

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 45
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/StampCommand;->getCoordinates()Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v0, p2, v5}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/StampCommand;->getBoxWidth()F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 47
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/StampCommand;->getBoxHeight()F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 48
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/StampCommand;->getBoxRotation()F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 49
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 39
    .end local v2    # "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    .end local v3    # "$i$a$-with-StampCommandSerializer$write$1$1":I
    nop

    .line 50
    nop

    .line 38
    .end local v0    # "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    .end local v1    # "$i$a$-with-StampCommandSerializer$write$1":I
    nop

    .line 51
    return-void

    .line 43
    .restart local v0    # "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    .restart local v1    # "$i$a$-with-StampCommandSerializer$write$1":I
    .restart local v2    # "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    .restart local v3    # "$i$a$-with-StampCommandSerializer$write$1$1":I
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v5, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v5}, Lcom/esotericsoftware/kryo/KryoException;-><init>()V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
.end method
