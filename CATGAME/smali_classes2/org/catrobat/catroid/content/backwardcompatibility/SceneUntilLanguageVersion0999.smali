.class public Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;
.super Ljava/lang/Object;
.source "SceneUntilLanguageVersion0999.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "scene"
.end annotation

.annotation runtime Lorg/catrobat/catroid/io/XStreamFieldKeyOrder;
    value = {
        "name",
        "objectList",
        "data"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

.field private name:Ljava/lang/String;

.field private objectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;->objectList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSpriteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;->objectList:Ljava/util/List;

    return-object v0
.end method

.method public getSpriteUserLists(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Sprite;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;->data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;->spriteListOfLists:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;->data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

    iget-object v0, v0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;->spriteListOfLists:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 71
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpriteUserVariables(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Sprite;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;->data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;->spriteVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/SceneUntilLanguageVersion0999;->data:Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;

    iget-object v0, v0, Lorg/catrobat/catroid/content/backwardcompatibility/LegacyDataContainer;->spriteVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 64
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
