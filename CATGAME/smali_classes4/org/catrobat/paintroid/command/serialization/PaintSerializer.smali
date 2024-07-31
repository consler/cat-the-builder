.class public final Lorg/catrobat/paintroid/command/serialization/PaintSerializer;
.super Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
.source "PaintSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer<",
        "Landroid/graphics/Paint;",
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J(\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000eH\u0016J(\u0010\u000f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000eH\u0016J \u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/PaintSerializer;",
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer;",
        "Landroid/graphics/Paint;",
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
        "paint",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final activityContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "activityContext"    # Landroid/content/Context;

    const-string v0, "activityContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;-><init>(I)V

    iput-object p2, p0, Lorg/catrobat/paintroid/command/serialization/PaintSerializer;->activityContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Landroid/graphics/Paint;
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
            "Landroid/graphics/Paint;",
            ">;)",
            "Landroid/graphics/Paint;"
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

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/PaintSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Landroid/graphics/Paint;
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
            "+",
            "Landroid/graphics/Paint;",
            ">;)",
            "Landroid/graphics/Paint;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;

    iget-object v1, p0, Lorg/catrobat/paintroid/command/serialization/PaintSerializer;->activityContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;
    const/4 v2, 0x0

    .line 45
    .local v2, "$i$a$-apply-PaintSerializer$readCurrentVersion$toolPaint$1":I
    move-object v3, p2

    .local v3, "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    const/4 v4, 0x0

    .line 46
    .local v4, "$i$a$-with-PaintSerializer$readCurrentVersion$toolPaint$1$1":I
    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->setColor(I)V

    .line 47
    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v5

    invoke-virtual {v1, v5}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->setStrokeWidth(F)V

    .line 48
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v5

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 49
    nop

    .line 45
    .end local v3    # "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    .end local v4    # "$i$a$-with-PaintSerializer$readCurrentVersion$toolPaint$1$1":I
    nop

    .line 50
    nop

    .line 44
    .end local v1    # "$this$apply":Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;
    .end local v2    # "$i$a$-apply-PaintSerializer$readCurrentVersion$toolPaint$1":I
    nop

    .line 51
    .local v0, "toolPaint":Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;
    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$apply":Landroid/graphics/Paint;
    const/4 v3, 0x0

    .line 52
    .local v3, "$i$a$-apply-PaintSerializer$readCurrentVersion$1":I
    move-object v4, p2

    .local v4, "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    const/4 v5, 0x0

    .line 53
    .local v5, "$i$a$-with-PaintSerializer$readCurrentVersion$1$1":I
    invoke-virtual {v4}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    invoke-static {}, Landroid/graphics/Paint$Style;->values()[Landroid/graphics/Paint$Style;

    move-result-object v6

    invoke-virtual {v4}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object v6

    invoke-virtual {v4}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 56
    nop

    .line 52
    .end local v4    # "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    .end local v5    # "$i$a$-with-PaintSerializer$readCurrentVersion$1$1":I
    nop

    .line 57
    nop

    .line 51
    .end local v2    # "$this$apply":Landroid/graphics/Paint;
    .end local v3    # "$i$a$-apply-PaintSerializer$readCurrentVersion$1":I
    return-object v1
.end method

.method public bridge synthetic readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/PaintSerializer;->readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "paint"    # Landroid/graphics/Paint;

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v0, p2

    .local v0, "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    const/4 v1, 0x0

    .line 31
    .local v1, "$i$a$-with-PaintSerializer$write$1":I
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 32
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 33
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 34
    invoke-virtual {p3}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    .line 35
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint$Style;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 36
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint$Join;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 37
    nop

    .line 30
    .end local v0    # "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    .end local v1    # "$i$a$-with-PaintSerializer$write$1":I
    nop

    .line 38
    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p3, Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/PaintSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Landroid/graphics/Paint;)V

    return-void
.end method
