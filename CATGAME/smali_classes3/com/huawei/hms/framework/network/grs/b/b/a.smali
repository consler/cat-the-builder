.class public Lcom/huawei/hms/framework/network/grs/b/b/a;
.super Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/b/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;-><init>()V

    const-string v0, "if_name"

    const-string v1, "NetworkKit-grs"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/hms/framework/network/grs/b/b/a;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;

    return-void
.end method
