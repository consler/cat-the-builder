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
    value = "SMAP\nDataStructuresSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataStructuresSerializer.kt\norg/catrobat/paintroid/command/serialization/DataStructuresSerializer$StringArraySerializer\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,135:1\n13536#2,2:136\n37#3,2:138\n*S KotlinDebug\n*F\n+ 1 DataStructuresSerializer.kt\norg/catrobat/paintroid/command/serialization/DataStructuresSerializer$StringArraySerializer\n*L\n58#1:136,2\n74#1:138,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
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

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$StringArraySerializer;->readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[Ljava/lang/String;
    .locals 3
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

    const-string p1, "input"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "type"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    .line 70
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 72
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    check-cast p3, Ljava/util/Collection;

    new-array p1, v0, [Ljava/lang/String;

    .line 139
    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$StringArraySerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Ljava/lang/String;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "output"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "array"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    array-length p1, p3

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 136
    array-length p1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p3, v0

    .line 59
    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
