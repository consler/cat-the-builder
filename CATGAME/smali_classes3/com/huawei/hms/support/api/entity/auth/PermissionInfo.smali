.class public Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;
.super Ljava/lang/Object;
.source "PermissionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appID:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private permission:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo$1;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo$1;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->appID:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->packageName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->permission:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->appID:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->packageName:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->permission:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->appID:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->packageName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setPermission(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->permission:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setPermissionUri(Ljava/lang/String;)Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->permission:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 92
    iget-object p2, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->appID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return-void
.end method
