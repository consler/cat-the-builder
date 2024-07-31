.class public Lorg/catrobat/catroid/formulaeditor/UserVariable;
.super Ljava/lang/Object;
.source "UserVariable.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/catrobat/catroid/formulaeditor/UserData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lorg/catrobat/catroid/formulaeditor/UserData<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private deviceValueKey:Ljava/util/UUID;

.field private transient dummy:Z

.field private initialIndex:I

.field private name:Ljava/lang/String;

.field private transient value:Ljava/lang/Object;

.field private transient visible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->initialIndex:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->visible:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->dummy:Z

    .line 40
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->value:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->initialIndex:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->visible:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->dummy:Z

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->name:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->value:Ljava/lang/Object;

    .line 46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->deviceValueKey:Ljava/util/UUID;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->initialIndex:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->visible:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->dummy:Z

    .line 50
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->name:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->value:Ljava/lang/Object;

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->deviceValueKey:Ljava/util/UUID;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 1
    .param p1, "variable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->initialIndex:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->visible:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->dummy:Z

    .line 56
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/UserVariable;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->name:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/UserVariable;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->value:Ljava/lang/Object;

    .line 58
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->deviceValueKey:Ljava/util/UUID;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 112
    if-ne p1, p0, :cond_0

    .line 113
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 116
    return v0

    .line 118
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    return v0

    .line 121
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDeviceKey()Ljava/util/UUID;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->deviceValueKey:Ljava/util/UUID;

    return-object v0
.end method

.method public getInitialIndex()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->initialIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->visible:Z

    return v0
.end method

.method public hasSameValue(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z
    .locals 2
    .param p1, "variableToCheck"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 125
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/UserVariable;->value:Ljava/lang/Object;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDummy()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->dummy:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .line 107
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->value:Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public setDeviceValueKey(Ljava/util/UUID;)V
    .locals 0
    .param p1, "deviceValueFileName"    # Ljava/util/UUID;

    .line 138
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->deviceValueKey:Ljava/util/UUID;

    .line 139
    return-void
.end method

.method public setDummy(Z)V
    .locals 0
    .param p1, "dummy"    # Z

    .line 102
    iput-boolean p1, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->dummy:Z

    .line 103
    return-void
.end method

.method public setInitialIndex(I)V
    .locals 0
    .param p1, "initialIndex"    # I

    .line 66
    iput p1, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->initialIndex:I

    .line 67
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 86
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->value:Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 94
    iput-boolean p1, p0, Lorg/catrobat/catroid/formulaeditor/UserVariable;->visible:Z

    .line 95
    return-void
.end method
