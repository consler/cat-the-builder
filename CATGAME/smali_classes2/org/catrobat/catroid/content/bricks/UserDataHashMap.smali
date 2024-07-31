.class public Lorg/catrobat/catroid/content/bricks/UserDataHashMap;
.super Ljava/util/HashMap;
.source "UserDataHashMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lorg/catrobat/catroid/content/bricks/Brick$BrickData;",
        "Lorg/catrobat/catroid/formulaeditor/UserData;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7d546f3d461ca684L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->clone()Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/UserDataHashMap;
    .locals 6

    .line 40
    new-instance v0, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;-><init>()V

    .line 41
    .local v0, "copiedMap":Lorg/catrobat/catroid/content/bricks/UserDataHashMap;
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 42
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$BrickData;Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    const/4 v3, 0x0

    .line 43
    .local v3, "userData":Lorg/catrobat/catroid/formulaeditor/UserData;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    invoke-static {v4}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->isUserList(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-direct {v4, v5}, Lorg/catrobat/catroid/formulaeditor/UserList;-><init>(Lorg/catrobat/catroid/formulaeditor/UserList;)V

    move-object v3, v4

    goto :goto_1

    .line 47
    :cond_0
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-direct {v4, v5}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    move-object v3, v4

    .line 51
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$BrickData;Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    .end local v3    # "userData":Lorg/catrobat/catroid/formulaeditor/UserData;
    goto :goto_0

    .line 53
    :cond_2
    return-object v0
.end method
