.class public final Lorg/catrobat/catroid/content/Scope;
.super Ljava/lang/Object;
.source "Scope.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J+\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/Scope;",
        "",
        "project",
        "Lorg/catrobat/catroid/content/Project;",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sequence",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;",
        "(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V",
        "getProject",
        "()Lorg/catrobat/catroid/content/Project;",
        "getSequence",
        "()Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;",
        "getSprite",
        "()Lorg/catrobat/catroid/content/Sprite;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final project:Lorg/catrobat/catroid/content/Project;

.field private final sequence:Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

.field private final sprite:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V
    .locals 1
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p3, "sequence"    # Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    const-string v0, "sprite"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/content/Scope;->project:Lorg/catrobat/catroid/content/Project;

    iput-object p2, p0, Lorg/catrobat/catroid/content/Scope;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iput-object p3, p0, Lorg/catrobat/catroid/content/Scope;->sequence:Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    return-void
.end method

.method public static synthetic copy$default(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;ILjava/lang/Object;)Lorg/catrobat/catroid/content/Scope;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lorg/catrobat/catroid/content/Scope;->project:Lorg/catrobat/catroid/content/Project;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lorg/catrobat/catroid/content/Scope;->sprite:Lorg/catrobat/catroid/content/Sprite;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lorg/catrobat/catroid/content/Scope;->sequence:Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/catroid/content/Scope;->copy(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)Lorg/catrobat/catroid/content/Scope;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/catrobat/catroid/content/Project;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/content/Scope;->project:Lorg/catrobat/catroid/content/Project;

    return-object v0
.end method

.method public final component2()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/content/Scope;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public final component3()Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/content/Scope;->sequence:Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    return-object v0
.end method

.method public final copy(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)Lorg/catrobat/catroid/content/Scope;
    .locals 1

    const-string v0, "sprite"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/catrobat/catroid/content/Scope;

    invoke-direct {v0, p1, p2, p3}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/catrobat/catroid/content/Scope;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/catrobat/catroid/content/Scope;

    iget-object v0, p0, Lorg/catrobat/catroid/content/Scope;->project:Lorg/catrobat/catroid/content/Project;

    iget-object v1, p1, Lorg/catrobat/catroid/content/Scope;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/content/Scope;->sprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v1, p1, Lorg/catrobat/catroid/content/Scope;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/content/Scope;->sequence:Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    iget-object p1, p1, Lorg/catrobat/catroid/content/Scope;->sequence:Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getProject()Lorg/catrobat/catroid/content/Project;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scope;->project:Lorg/catrobat/catroid/content/Project;

    return-object v0
.end method

.method public final getSequence()Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scope;->sequence:Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    return-object v0
.end method

.method public final getSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scope;->sprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/catrobat/catroid/content/Scope;->project:Lorg/catrobat/catroid/content/Project;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/content/Scope;->sprite:Lorg/catrobat/catroid/content/Sprite;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/content/Scope;->sequence:Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scope(project="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/content/Scope;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sprite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/content/Scope;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/content/Scope;->sequence:Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
