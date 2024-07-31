.class public Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;
    }
.end annotation


# instance fields
.field private appStorePkgName:Ljava/lang/String;

.field private isShowImmediate:Z

.field private minIntervalDay:I

.field private mustBtnOne:Z

.field private packageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serviceZone:Ljava/lang/String;

.field private targetPkgName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.huawei.appmarket"

    iput-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->appStorePkgName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->isShowImmediate:Z

    iput v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->minIntervalDay:I

    iput-boolean v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->mustBtnOne:Z

    invoke-static {p1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->access$000(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->serviceZone:Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->access$100(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->appStorePkgName:Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->access$200(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->targetPkgName:Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->access$300(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->isShowImmediate:Z

    invoke-static {p1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->access$400(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->minIntervalDay:I

    invoke-static {p1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->access$500(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->mustBtnOne:Z

    invoke-static {p1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->access$600(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->packageList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;-><init>(Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;)V

    return-void
.end method


# virtual methods
.method public getAppStorePkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->appStorePkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getMinIntervalDay()I
    .locals 1

    iget v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->minIntervalDay:I

    return v0
.end method

.method public getPackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->packageList:Ljava/util/List;

    return-object v0
.end method

.method public getServiceZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->serviceZone:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->targetPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public isMustBtnOne()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->mustBtnOne:Z

    return v0
.end method

.method public isShowImmediate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->isShowImmediate:Z

    return v0
.end method
