.class public final Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionCubeSerializer;
.super Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
.source "SerializablePath.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/command/serialization/SerializablePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PathActionCubeSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer<",
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;",
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J(\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000cH\u0016J(\u0010\r\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000cH\u0016J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionCubeSerializer;",
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer;",
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;",
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
        "action",
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

    .line 178
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 178
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionCubeSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;
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
            "Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;",
            ">;)",
            "Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;

    invoke-super {p0, v0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;->handleVersions(Lorg/catrobat/paintroid/command/serialization/VersionSerializer;Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;

    return-object v0
.end method

.method public bridge synthetic readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 178
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionCubeSerializer;->readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;

    move-result-object p1

    return-object p1
.end method

.method public readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;
    .locals 10
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
            "Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;",
            ">;)",
            "Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    move-object v0, p2

    .local v0, "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    const/4 v1, 0x0

    .line 195
    .local v1, "$i$a$-with-SerializablePath$PathActionCubeSerializer$readCurrentVersion$1":I
    new-instance v9, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v3

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v4

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v5

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v6

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v7

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;-><init>(FFFFFF)V

    .line 194
    .end local v0    # "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    .end local v1    # "$i$a$-with-SerializablePath$PathActionCubeSerializer$readCurrentVersion$1":I
    nop

    .line 196
    return-object v9
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 178
    check-cast p3, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;

    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionCubeSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;)V
    .locals 3
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "action"    # Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    move-object v0, p2

    .local v0, "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    const/4 v1, 0x0

    .line 181
    .local v1, "$i$a$-with-SerializablePath$PathActionCubeSerializer$write$1":I
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->getX1()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 182
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->getY1()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 183
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->getX2()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 184
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->getY2()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 185
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->getX3()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 186
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->getY3()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 187
    nop

    .line 180
    .end local v0    # "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    .end local v1    # "$i$a$-with-SerializablePath$PathActionCubeSerializer$write$1":I
    nop

    .line 188
    return-void
.end method
