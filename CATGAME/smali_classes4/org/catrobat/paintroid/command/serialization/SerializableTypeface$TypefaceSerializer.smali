.class public final Lorg/catrobat/paintroid/command/serialization/SerializableTypeface$TypefaceSerializer;
.super Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
.source "SerializableTypeface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypefaceSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer<",
        "Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J(\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000cH\u0016J(\u0010\r\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000cH\u0016J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/SerializableTypeface$TypefaceSerializer;",
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer;",
        "Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;",
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
        "typeface",
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

    .line 28
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface$TypefaceSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;",
            ">;)",
            "Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;

    invoke-super {p0, v0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;->handleVersions(Lorg/catrobat/paintroid/command/serialization/VersionSerializer;Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    return-object p1
.end method

.method public bridge synthetic readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface$TypefaceSerializer;->readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    move-result-object p1

    return-object p1
.end method

.method public readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;",
            ">;)",
            "Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "input"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "type"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance p1, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "readString()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lorg/catrobat/paintroid/tools/FontType;->valueOf(Ljava/lang/String;)Lorg/catrobat/paintroid/tools/FontType;

    move-result-object v1

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v5

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v6

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;-><init>(Lorg/catrobat/paintroid/tools/FontType;ZZZFF)V

    return-object p1
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p3, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface$TypefaceSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;)V
    .locals 1

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "output"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "typeface"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getFont()Lorg/catrobat/paintroid/tools/FontType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/FontType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getBold()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    .line 33
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getUnderline()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    .line 34
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getItalic()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    .line 35
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getTextSize()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 36
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getTextSkewX()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
