.class public abstract Lorg/catrobat/catroid/content/bricks/UserDataBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "UserDataBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/FormulaBrick;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/formulaeditor/UserData;",
        ">;"
    }
.end annotation


# instance fields
.field public transient brickDataToTextViewIdMap:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "Lorg/catrobat/catroid/content/bricks/Brick$BrickData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient spinnerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/catrobat/catroid/content/bricks/Brick$BrickData;",
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<",
            "Lorg/catrobat/catroid/formulaeditor/UserData;",
            ">;>;"
        }
    .end annotation
.end field

.field protected userDataList:Lorg/catrobat/catroid/content/bricks/UserDataHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 61
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->brickDataToTextViewIdMap:Lcom/google/common/collect/BiMap;

    .line 63
    new-instance v0, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->userDataList:Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->spinnerMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/content/bricks/UserDataBrick;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/content/bricks/UserDataBrick;

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->spinnerMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method protected addAllowedBrickData(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;I)V
    .locals 2
    .param p1, "brickData"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickData;
    .param p2, "textViewResourceId"    # I

    .line 108
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->userDataList:Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->userDataList:Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->brickDataToTextViewIdMap:Lcom/google/common/collect/BiMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 69
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;

    .line 70
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/UserDataBrick;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->userDataList:Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->clone()Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    move-result-object v1

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->userDataList:Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->spinnerMap:Ljava/util/HashMap;

    .line 72
    return-object v0
.end method

.method public getBrickDataFromTextViewId(I)Lorg/catrobat/catroid/content/bricks/Brick$BrickData;
    .locals 2
    .param p1, "textViewId"    # I

    .line 115
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->brickDataToTextViewIdMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    return-object v0
.end method

.method public getUserDataMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lorg/catrobat/catroid/content/bricks/Brick$BrickData;",
            "Lorg/catrobat/catroid/formulaeditor/UserData;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->userDataList:Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    return-object v0
.end method

.method public getUserListWithBrickData(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)Lorg/catrobat/catroid/formulaeditor/UserList;
    .locals 3
    .param p1, "brickData"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    .line 76
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->userDataList:Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->userDataList:Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 78
    .local v0, "result":Lorg/catrobat/catroid/formulaeditor/UserData;
    instance-of v1, v0, Lorg/catrobat/catroid/formulaeditor/UserList;

    if-eqz v1, :cond_0

    .line 79
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    return-object v1

    .line 81
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 84
    .end local v0    # "result":Lorg/catrobat/catroid/formulaeditor/UserData;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible Brick data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have BrickField."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserVariableWithBrickData(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .locals 3
    .param p1, "brickData"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    .line 90
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->userDataList:Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->userDataList:Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 92
    .local v0, "result":Lorg/catrobat/catroid/formulaeditor/UserData;
    instance-of v1, v0, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v1, :cond_0

    .line 93
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    return-object v1

    .line 95
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 98
    .end local v0    # "result":Lorg/catrobat/catroid/formulaeditor/UserData;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible Brick data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have BrickField."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 122
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    .line 124
    .local v0, "sprite":Lorg/catrobat/catroid/content/Sprite;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v1, "lists":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v2, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;

    const v3, 0x7f1205aa

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, "variables":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v4, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->userDataList:Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 135
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$BrickData;Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    iget-object v5, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->brickDataToTextViewIdMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 138
    .local v5, "spinnerid":Ljava/lang/Integer;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    invoke-static {v6}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->isUserList(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 139
    new-instance v6, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    iget-object v7, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->view:Landroid/view/View;

    invoke-direct {v6, v5, v7, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    .local v6, "spinner":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    goto :goto_1

    .line 141
    .end local v6    # "spinner":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    :cond_0
    new-instance v6, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    iget-object v7, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->view:Landroid/view/View;

    invoke-direct {v6, v5, v7, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    .line 144
    .restart local v6    # "spinner":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    :goto_1
    invoke-virtual {v6, p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 145
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/common/Nameable;

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 146
    iget-object v7, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->spinnerMap:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$BrickData;Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    .end local v5    # "spinnerid":Ljava/lang/Integer;
    .end local v6    # "spinner":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    goto :goto_0

    .line 149
    :cond_1
    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->view:Landroid/view/View;

    return-object v3
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 236
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p2, Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 2
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 244
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->userDataList:Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->getBrickDataFromTextViewId(I)Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 18
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 154
    move-object/from16 v6, p0

    iget-object v0, v6, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v7

    .line 155
    .local v7, "activity":Landroidx/appcompat/app/AppCompatActivity;
    if-nez v7, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v8

    .line 160
    .local v8, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v9

    .line 161
    .local v9, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->getBrickDataFromTextViewId(I)Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    move-result-object v10

    .line 164
    .local v10, "brickData":Lorg/catrobat/catroid/content/bricks/Brick$BrickData;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->getBrickDataFromTextViewId(I)Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->isUserList(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    const v0, 0x7f120241

    .line 166
    .local v0, "placeholder":I
    const v1, 0x7f1203e8

    move v11, v0

    move v12, v1

    .local v1, "title":I
    goto :goto_0

    .line 168
    .end local v0    # "placeholder":I
    .end local v1    # "title":I
    :cond_1
    const v0, 0x7f120253

    .line 169
    .restart local v0    # "placeholder":I
    const v1, 0x7f1204b3

    move v11, v0

    move v12, v1

    .line 171
    .end local v0    # "placeholder":I
    .local v11, "placeholder":I
    .local v12, "title":I
    :goto_0
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-direct {v0, v7}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v13, v0

    .line 172
    .local v13, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    invoke-virtual {v13, v11}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->createUniqueNameProvider(I)Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    move-result-object v14

    .line 173
    .local v14, "uniqueNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    const v0, 0x7f12022d

    invoke-virtual {v7, v0}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;

    iget-object v2, v6, Lorg/catrobat/catroid/content/bricks/UserDataBrick;->spinnerMap:Ljava/util/HashMap;

    .line 174
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v7, v11}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v15

    const v0, 0x7f1205ff

    .line 176
    invoke-virtual {v7, v0}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v8

    move-object/from16 v16, v8

    move-object v8, v4

    .end local v8    # "currentProject":Lorg/catrobat/catroid/content/Project;
    .local v16, "currentProject":Lorg/catrobat/catroid/content/Project;
    move-object v4, v9

    move-object/from16 v17, v9

    move-object v9, v5

    .end local v9    # "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    .local v17, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/content/bricks/UserDataBrick$1;-><init>(Lorg/catrobat/catroid/content/bricks/UserDataBrick;Lorg/catrobat/catroid/content/bricks/Brick$BrickData;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v15, v9, v8}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 217
    invoke-virtual {v13, v12}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0137

    .line 218
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1201b8

    new-instance v2, Lorg/catrobat/catroid/content/bricks/UserDataBrick$3;

    invoke-direct {v2, v6, v10}, Lorg/catrobat/catroid/content/bricks/UserDataBrick$3;-><init>(Lorg/catrobat/catroid/content/bricks/UserDataBrick;Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)V

    .line 219
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/content/bricks/UserDataBrick$2;

    invoke-direct {v1, v6, v10}, Lorg/catrobat/catroid/content/bricks/UserDataBrick$2;-><init>(Lorg/catrobat/catroid/content/bricks/UserDataBrick;Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)V

    .line 225
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 232
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 240
    return-void
.end method
