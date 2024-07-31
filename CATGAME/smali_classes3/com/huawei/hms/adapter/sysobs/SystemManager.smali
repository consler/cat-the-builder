.class public final Lcom/huawei/hms/adapter/sysobs/SystemManager;
.super Ljava/lang/Object;
.source "SystemManager.java"


# static fields
.field private static a:Lcom/huawei/hms/adapter/sysobs/SystemManager;

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/huawei/hms/adapter/sysobs/SystemNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/huawei/hms/adapter/sysobs/SystemManager;

    invoke-direct {v0}, Lcom/huawei/hms/adapter/sysobs/SystemManager;-><init>()V

    sput-object v0, Lcom/huawei/hms/adapter/sysobs/SystemManager;->a:Lcom/huawei/hms/adapter/sysobs/SystemManager;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/adapter/sysobs/SystemManager;->b:Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/huawei/hms/adapter/sysobs/SystemManager$1;

    invoke-direct {v0}, Lcom/huawei/hms/adapter/sysobs/SystemManager$1;-><init>()V

    sput-object v0, Lcom/huawei/hms/adapter/sysobs/SystemManager;->c:Lcom/huawei/hms/adapter/sysobs/SystemNotifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 19
    sget-object v0, Lcom/huawei/hms/adapter/sysobs/SystemManager;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;
    .locals 1

    .line 96
    sget-object v0, Lcom/huawei/hms/adapter/sysobs/SystemManager;->a:Lcom/huawei/hms/adapter/sysobs/SystemManager;

    return-object v0
.end method

.method public static getSystemNotifier()Lcom/huawei/hms/adapter/sysobs/SystemNotifier;
    .locals 1

    .line 100
    sget-object v0, Lcom/huawei/hms/adapter/sysobs/SystemManager;->c:Lcom/huawei/hms/adapter/sysobs/SystemNotifier;

    return-object v0
.end method


# virtual methods
.method public notifyResolutionResult(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 111
    sget-object v0, Lcom/huawei/hms/adapter/sysobs/SystemManager;->c:Lcom/huawei/hms/adapter/sysobs/SystemNotifier;

    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/adapter/sysobs/SystemNotifier;->notifyObservers(Landroid/content/Intent;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public notifyUpdateResult(I)V
    .locals 1

    .line 121
    sget-object v0, Lcom/huawei/hms/adapter/sysobs/SystemManager;->c:Lcom/huawei/hms/adapter/sysobs/SystemNotifier;

    invoke-interface {v0, p1}, Lcom/huawei/hms/adapter/sysobs/SystemNotifier;->notifyObservers(I)V

    .line 122
    return-void
.end method
