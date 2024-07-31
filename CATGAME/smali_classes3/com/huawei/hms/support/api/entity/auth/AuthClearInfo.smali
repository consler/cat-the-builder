.class public Lcom/huawei/hms/support/api/entity/auth/AuthClearInfo;
.super Ljava/lang/Object;
.source "AuthClearInfo.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# static fields
.field public static final TYPE_CLEAR_ALL:I = 0x1

.field public static final TYPE_CLEAR_APP:I


# instance fields
.field private appID:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/support/api/entity/auth/AuthClearInfo;->type:I

    .line 45
    return-void
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/AuthClearInfo;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/huawei/hms/support/api/entity/auth/AuthClearInfo;->type:I

    return v0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/AuthClearInfo;->appID:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/huawei/hms/support/api/entity/auth/AuthClearInfo;->type:I

    .line 63
    return-void
.end method
