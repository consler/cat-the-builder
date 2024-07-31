.class public final Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$StringArraySerializer;
.super Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
.source "DataStructuresSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataStructuresSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataStructuresSerializer.kt\norg/catrobat/paintroid/command/serialization/DataStructuresSerializer$StringArraySerializer\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,135:1\n13506#2,2:136\n37#3,2:138\n*E\n*S KotlinDebug\n*F\n+ 1 DataStructuresSerializer.kt\norg/catrobat/paintroid/command/serialization/DataStructuresSerializer$StringArraySerializer\n*L\n58#1,2:136\n74#1,2:138\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J9\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0014\u0010\u000c\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\rH\u0016\u00a2\u0006\u0002\u0010\u000eJ9\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0014\u0010\u000c\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\rH\u0016\u00a2\u0006\u0002\u0010\u000eJ+\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016\u00a2\u0006\u0002\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$StringArraySerializer;",
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer;",
        "",
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
        "(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[Ljava/lang/String;",
        "readCurrentVersion",
        "write",
        "",
        "output",
        "Lcom/esotericsoftware/kryo/io/Output;",
        "array",
        "(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Ljava/lang/String;)V",
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

    .line 54
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$StringArraySerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[Ljava/lang/String;
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
            "+[",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;

    invoke-super {p0, v0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;->handleVersions(Lorg/catrobat/paintroid/command/serialization/VersionSerializer;Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$StringArraySerializer;->readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[Ljava/lang/String;
    .locals 9
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+[",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    move-object v0, p2

    .local v0, "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    const/4 v1, 0x0

    .line 69
    .local v1, "$i$a$-with-DataStructuresSerializer$StringArraySerializer$readCurrentVersion$1":I
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    .line 70
    .local v2, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v3, "strList":Ljava/util/ArrayList;
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    move v6, v5

    .local v6, "it":I
    const/4 v7, 0x0

    .line 72
    .local v7, "$i$a$-repeat-DataStructuresSerializer$StringArraySerializer$readCurrentVersion$1$1":I
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    nop

    .line 71
    .end local v6    # "it":I
    .end local v7    # "$i$a$-repeat-DataStructuresSerializer$StringArraySerializer$readCurrentVersion$1$1":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    :cond_0
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    .local v5, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 138
    .local v6, "$i$f$toTypedArray":I
    move-object v7, v5

    .line 139
    .local v7, "thisCollection$iv":Ljava/util/Collection;
    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v7, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .end local v5    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$toTypedArray":I
    .end local v7    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v4, [Ljava/lang/String;

    .line 68
    .end local v0    # "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    .end local v1    # "$i$a$-with-DataStructuresSerializer$StringArraySerializer$readCurrentVersion$1":I
    .end local v2    # "size":I
    .end local v3    # "strList":Ljava/util/ArrayList;
    return-object v4

    .line 139
    .restart local v0    # "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    .restart local v1    # "$i$a$-with-DataStructuresSerializer$StringArraySerializer$readCurrentVersion$1":I
    .restart local v2    # "size":I
    .restart local v3    # "strList":Ljava/util/ArrayList;
    .restart local v5    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v6    # "$i$f$toTypedArray":I
    .restart local v7    # "thisCollection$iv":Ljava/util/Collection;
    :cond_1
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v8, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v4, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$StringArraySerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Ljava/lang/String;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Ljava/lang/String;)V
    .locals 9
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "array"    # [Ljava/lang/String;

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    move-object v0, p2

    .local v0, "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    const/4 v1, 0x0

    .line 57
    .local v1, "$i$a$-with-DataStructuresSerializer$StringArraySerializer$write$1":I
    array-length v2, p3

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 58
    move-object v2, p3

    .local v2, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 136
    .local v3, "$i$f$forEach":I
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "str":Ljava/lang/String;
    const/4 v8, 0x0

    .line 59
    .local v8, "$i$a$-forEach-DataStructuresSerializer$StringArraySerializer$write$1$1":I
    invoke-virtual {v0, v7}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    .line 60
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "$i$a$-forEach-DataStructuresSerializer$StringArraySerializer$write$1$1":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 137
    :cond_0
    nop

    .line 61
    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    nop

    .line 56
    .end local v0    # "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    .end local v1    # "$i$a$-with-DataStructuresSerializer$StringArraySerializer$write$1":I
    nop

    .line 62
    return-void
.end method
