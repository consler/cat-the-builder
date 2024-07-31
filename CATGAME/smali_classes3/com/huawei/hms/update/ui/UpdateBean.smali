.class public Lcom/huawei/hms/update/ui/UpdateBean;
.super Ljava/lang/Object;
.source "UpdateBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->g:Z

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 37
    return-object p0
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method c()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClientAppName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypeList()Ljava/util/ArrayList;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public isNeedConfirm()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/huawei/hms/update/ui/UpdateBean;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setClientAppId(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/huawei/hms/update/ui/UpdateBean;->d:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setClientAppName(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/huawei/hms/update/ui/UpdateBean;->e:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setClientPackageName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/huawei/hms/update/ui/UpdateBean;->b:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setClientVersionCode(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/huawei/hms/update/ui/UpdateBean;->c:I

    .line 62
    return-void
.end method

.method public setHmsOrApkUpgrade(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/huawei/hms/update/ui/UpdateBean;->a:Z

    .line 46
    return-void
.end method

.method public setNeedConfirm(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/huawei/hms/update/ui/UpdateBean;->g:Z

    .line 94
    return-void
.end method

.method public setTypeList(Ljava/util/ArrayList;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/huawei/hms/update/ui/UpdateBean;->f:Ljava/util/ArrayList;

    .line 86
    return-void
.end method
