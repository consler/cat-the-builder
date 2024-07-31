.class Lcom/huawei/hms/utils/HMSBIInitializer$1;
.super Ljava/lang/Object;
.source "HMSBIInitializer.java"

# interfaces
.implements Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/utils/HMSBIInitializer;->initBI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/utils/HMSBIInitializer;


# direct methods
.method constructor <init>(Lcom/huawei/hms/utils/HMSBIInitializer;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/huawei/hms/utils/HMSBIInitializer$1;->a:Lcom/huawei/hms/utils/HMSBIInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBackFail(I)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get grs failed, the errorcode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HMSBIInitializer"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onCallBackSuccess(Ljava/lang/String;)V
    .locals 2

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/huawei/hms/utils/HMSBIInitializer$1;->a:Lcom/huawei/hms/utils/HMSBIInitializer;

    invoke-static {v0}, Lcom/huawei/hms/utils/HMSBIInitializer;->a(Lcom/huawei/hms/utils/HMSBIInitializer;)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->setEnableImei(Z)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->setEnableUDID(Z)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v1}, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->setEnableSN(Z)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v1, p1}, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->setCollectURL(ILjava/lang/String;)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v1, p1}, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->setCollectURL(ILjava/lang/String;)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;

    move-result-object p1

    .line 107
    const-string v0, "com.huawei.hwid"

    invoke-virtual {p1, v0}, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->setAppID(Ljava/lang/String;)Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/huawei/hianalytics/hms/HiAnalyticsConf$Builder;->create()V

    .line 109
    const-string p1, "HMSBIInitializer"

    const-string v0, "BI URL acquired successfully"

    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method
