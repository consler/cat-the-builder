.class public final Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$FloatArraySerializer;
.super Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
.source "DataStructuresSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FloatArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer<",
        "[F>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataStructuresSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataStructuresSerializer.kt\norg/catrobat/paintroid/command/serialization/DataStructuresSerializer$FloatArraySerializer\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,135:1\n13541#2,2:136\n*E\n*S KotlinDebug\n*F\n+ 1 DataStructuresSerializer.kt\norg/catrobat/paintroid/command/serialization/DataStructuresSerializer$FloatArraySerializer\n*L\n33#1,2:136\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J(\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000cH\u0016J(\u0010\r\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000cH\u0016J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$FloatArraySerializer;",
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer;",
        "",
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
        "array",
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

    .line 29
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$FloatArraySerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[F

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[F
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
            "+[F>;)[F"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;

    invoke-super {p0, v0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;->handleVersions(Lorg/catrobat/paintroid/command/serialization/VersionSerializer;Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public bridge synthetic readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$FloatArraySerializer;->readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[F

    move-result-object p1

    return-object p1
.end method

.method public readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[F
    .locals 8
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+[F>;)[F"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    move-object v0, p2

    .local v0, "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    const/4 v1, 0x0

    .line 44
    .local v1, "$i$a$-with-DataStructuresSerializer$FloatArraySerializer$readCurrentVersion$1":I
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    .line 45
    .local v2, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v3, "floatList":Ljava/util/ArrayList;
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    move v5, v4

    .local v5, "it":I
    const/4 v6, 0x0

    .line 47
    .local v6, "$i$a$-repeat-DataStructuresSerializer$FloatArraySerializer$readCurrentVersion$1$1":I
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    nop

    .line 46
    .end local v5    # "it":I
    .end local v6    # "$i$a$-repeat-DataStructuresSerializer$FloatArraySerializer$readCurrentVersion$1$1":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 49
    :cond_0
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v0

    .line 43
    .end local v0    # "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    .end local v1    # "$i$a$-with-DataStructuresSerializer$FloatArraySerializer$readCurrentVersion$1":I
    .end local v2    # "size":I
    .end local v3    # "floatList":Ljava/util/ArrayList;
    return-object v0
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$FloatArraySerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[F)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[F)V
    .locals 9
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "array"    # [F

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p2

    .local v0, "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    const/4 v1, 0x0

    .line 32
    .local v1, "$i$a$-with-DataStructuresSerializer$FloatArraySerializer$write$1":I
    array-length v2, p3

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 33
    move-object v2, p3

    .local v2, "$this$forEach$iv":[F
    const/4 v3, 0x0

    .line 136
    .local v3, "$i$f$forEach":I
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v2, v5

    .local v6, "element$iv":F
    move v7, v6

    .local v7, "floatValue":F
    const/4 v8, 0x0

    .line 34
    .local v8, "$i$a$-forEach-DataStructuresSerializer$FloatArraySerializer$write$1$1":I
    invoke-virtual {v0, v7}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 35
    nop

    .end local v6    # "element$iv":F
    .end local v7    # "floatValue":F
    .end local v8    # "$i$a$-forEach-DataStructuresSerializer$FloatArraySerializer$write$1$1":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 137
    :cond_0
    nop

    .line 36
    .end local v2    # "$this$forEach$iv":[F
    .end local v3    # "$i$f$forEach":I
    nop

    .line 31
    .end local v0    # "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    .end local v1    # "$i$a$-with-DataStructuresSerializer$FloatArraySerializer$write$1":I
    nop

    .line 37
    return-void
.end method
