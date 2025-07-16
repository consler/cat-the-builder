.class public Lcom/thoughtworks/xstream/mapper/SecurityMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "SecurityMapper.java"


# instance fields
.field private final permissions:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 2

    const/4 v0, 0x0

    .line 37
    move-object v1, v0

    check-cast v1, [Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/mapper/SecurityMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;[Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;[Lcom/thoughtworks/xstream/security/TypePermission;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    if-nez p2, :cond_0

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/SecurityMapper;->permissions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V
    .locals 2

    .line 65
    sget-object v0, Lcom/thoughtworks/xstream/security/NoTypePermission;->NONE:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/thoughtworks/xstream/security/AnyTypePermission;->ANY:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/SecurityMapper;->permissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/SecurityMapper;->permissions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .line 71
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/SecurityMapper;->permissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/SecurityMapper;->permissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/security/TypePermission;

    .line 74
    invoke-interface {v1, p1}, Lcom/thoughtworks/xstream/security/TypePermission;->allows(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Lcom/thoughtworks/xstream/security/ForbiddenClassException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ForbiddenClassException;-><init>(Ljava/lang/Class;)V

    throw v0
.end method
