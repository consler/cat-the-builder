.class public Lorg/catrobat/paintroid/command/serialization/SerializablePath;
.super Landroid/graphics/Path;
.source "SerializablePath.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/serialization/SerializablePath$SerializableAction;,
        Lorg/catrobat/paintroid/command/serialization/SerializablePath$Move;,
        Lorg/catrobat/paintroid/command/serialization/SerializablePath$Line;,
        Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;,
        Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;,
        Lorg/catrobat/paintroid/command/serialization/SerializablePath$Rewind;,
        Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathSerializer;,
        Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionMoveSerializer;,
        Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionLineSerializer;,
        Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionQuadSerializer;,
        Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionCubeSerializer;,
        Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionRewindSerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSerializablePath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerializablePath.kt\norg/catrobat/paintroid/command/serialization/SerializablePath\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,211:1\n1819#2,2:212\n*E\n*S KotlinDebug\n*F\n+ 1 SerializablePath.kt\norg/catrobat/paintroid/command/serialization/SerializablePath\n*L\n33#1,2:212\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0018\u0008\u0016\u0018\u00002\u00020\u0001:\u000c\u001d\u001e\u001f !\"#$%&\'(B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u001f\u0008\u0016\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006\u00a2\u0006\u0002\u0010\u0007B\u000f\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0000\u00a2\u0006\u0002\u0010\tJ8\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0011H\u0016J\u0018\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0011H\u0016J\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0011H\u0016J(\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011H\u0016J\u0008\u0010\u001c\u001a\u00020\u000fH\u0016R*\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u0007\u00a8\u0006)"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath;",
        "Landroid/graphics/Path;",
        "()V",
        "actions",
        "Ljava/util/ArrayList;",
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath$SerializableAction;",
        "Lkotlin/collections/ArrayList;",
        "(Ljava/util/ArrayList;)V",
        "src",
        "(Lorg/catrobat/paintroid/command/serialization/SerializablePath;)V",
        "serializableActions",
        "getSerializableActions",
        "()Ljava/util/ArrayList;",
        "setSerializableActions",
        "cubicTo",
        "",
        "x1",
        "",
        "y1",
        "x2",
        "y2",
        "x3",
        "y3",
        "lineTo",
        "x",
        "y",
        "moveTo",
        "quadTo",
        "rewind",
        "Cube",
        "Line",
        "Move",
        "PathActionCubeSerializer",
        "PathActionLineSerializer",
        "PathActionMoveSerializer",
        "PathActionQuadSerializer",
        "PathActionRewindSerializer",
        "PathSerializer",
        "Quad",
        "Rewind",
        "SerializableAction",
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
.field private serializableActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/paintroid/command/serialization/SerializablePath$SerializableAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->serializableActions:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "actions"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/paintroid/command/serialization/SerializablePath$SerializableAction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "actions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->serializableActions:Ljava/util/ArrayList;

    .line 33
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 212
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/paintroid/command/serialization/SerializablePath$SerializableAction;

    .local v4, "it":Lorg/catrobat/paintroid/command/serialization/SerializablePath$SerializableAction;
    const/4 v5, 0x0

    .line 34
    .local v5, "$i$a$-forEach-SerializablePath$1":I
    move-object v6, p0

    check-cast v6, Landroid/graphics/Path;

    invoke-interface {v4, v6}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$SerializableAction;->perform(Landroid/graphics/Path;)V

    .line 35
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lorg/catrobat/paintroid/command/serialization/SerializablePath$SerializableAction;
    .end local v5    # "$i$a$-forEach-SerializablePath$1":I
    goto :goto_0

    .line 213
    :cond_0
    nop

    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/command/serialization/SerializablePath;)V
    .locals 2
    .param p1, "src"    # Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    move-object v0, p1

    check-cast v0, Landroid/graphics/Path;

    invoke-direct {p0, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->serializableActions:Ljava/util/ArrayList;

    .line 39
    iget-object v1, p1, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->serializableActions:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public cubicTo(FFFFFF)V
    .locals 9
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .line 58
    iget-object v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->serializableActions:Ljava/util/ArrayList;

    new-instance v8, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;

    move-object v1, v8

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;-><init>(FFFFFF)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-super/range {p0 .. p6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 60
    return-void
.end method

.method public final getSerializableActions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/paintroid/command/serialization/SerializablePath$SerializableAction;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->serializableActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public lineTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 48
    iget-object v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->serializableActions:Ljava/util/ArrayList;

    new-instance v1, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Line;

    invoke-direct {v1, p1, p2}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Line;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-super {p0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    return-void
.end method

.method public moveTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 43
    iget-object v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->serializableActions:Ljava/util/ArrayList;

    new-instance v1, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Move;

    invoke-direct {v1, p1, p2}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Move;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-super {p0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 45
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 2
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 53
    iget-object v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->serializableActions:Ljava/util/ArrayList;

    new-instance v1, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 55
    return-void
.end method

.method public rewind()V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->serializableActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    invoke-super {p0}, Landroid/graphics/Path;->rewind()V

    .line 65
    return-void
.end method

.method public final setSerializableActions(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/catrobat/paintroid/command/serialization/SerializablePath$SerializableAction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath;->serializableActions:Ljava/util/ArrayList;

    return-void
.end method
