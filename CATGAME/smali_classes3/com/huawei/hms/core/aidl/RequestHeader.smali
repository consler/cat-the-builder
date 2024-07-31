.class public Lcom/huawei/hms/core/aidl/RequestHeader;
.super Ljava/lang/Object;
.source "RequestHeader.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private apiLevel:I
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private apiNameList:Ljava/util/List;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private sdkVersion:I
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->appId:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->packageName:Ljava/lang/String;

    .line 73
    iput p3, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->sdkVersion:I

    .line 74
    iput-object p4, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->sessionId:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public getApiNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->apiNameList:Ljava/util/List;

    .line 169
    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->appId:Ljava/lang/String;

    .line 84
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->packageName:Ljava/lang/String;

    .line 112
    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->sdkVersion:I

    .line 131
    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->sessionId:Ljava/lang/String;

    .line 150
    return-object v0
.end method

.method public setApiLevel(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->apiLevel:I

    .line 103
    return-void
.end method

.method public setApiNameList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->apiNameList:Ljava/util/List;

    .line 179
    return-void
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->appId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->packageName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setSdkVersion(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->sdkVersion:I

    .line 141
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/RequestHeader;->sessionId:Ljava/lang/String;

    .line 160
    return-void
.end method
