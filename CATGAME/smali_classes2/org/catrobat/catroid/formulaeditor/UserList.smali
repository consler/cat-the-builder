.class public Lorg/catrobat/catroid/formulaeditor/UserList;
.super Ljava/lang/Object;
.source "UserList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/catrobat/catroid/formulaeditor/UserData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lorg/catrobat/catroid/formulaeditor/UserData<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private deviceListKey:Ljava/util/UUID;

.field private initialIndex:I

.field private transient list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->initialIndex:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->list:Ljava/util/List;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->initialIndex:I

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->name:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->list:Ljava/util/List;

    .line 46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->deviceListKey:Ljava/util/UUID;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->initialIndex:I

    .line 50
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->name:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->list:Ljava/util/List;

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->deviceListKey:Ljava/util/UUID;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 2
    .param p1, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->initialIndex:I

    .line 56
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/UserList;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->name:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/catrobat/catroid/formulaeditor/UserList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->list:Ljava/util/List;

    .line 58
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->deviceListKey:Ljava/util/UUID;

    .line 59
    return-void
.end method


# virtual methods
.method public addListItem(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listItem"    # Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 104
    if-ne p1, p0, :cond_0

    .line 105
    const/4 v0, 0x1

    return v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 108
    return v0

    .line 110
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    return v0

    .line 113
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserList;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/UserList;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDeviceKey()Ljava/util/UUID;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->deviceListKey:Ljava/util/UUID;

    return-object v0
.end method

.method public getIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "listItem"    # Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getInitialIndex()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->initialIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->list:Ljava/util/List;

    return-object v0
.end method

.method public hasSameListSize(Lorg/catrobat/catroid/formulaeditor/UserList;)Z
    .locals 2
    .param p1, "listToCheck"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 117
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/UserList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    return-void
.end method

.method public setDeviceListKey(Ljava/util/UUID;)V
    .locals 0
    .param p1, "deviceListFileName"    # Ljava/util/UUID;

    .line 130
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->deviceListKey:Ljava/util/UUID;

    .line 131
    return-void
.end method

.method public setInitialIndex(I)V
    .locals 0
    .param p1, "initialIndex"    # I

    .line 66
    iput p1, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->initialIndex:I

    .line 67
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/formulaeditor/UserList;->setValue(Ljava/util/List;)V

    return-void
.end method

.method public setValue(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/UserList;->list:Ljava/util/List;

    .line 87
    return-void
.end method
