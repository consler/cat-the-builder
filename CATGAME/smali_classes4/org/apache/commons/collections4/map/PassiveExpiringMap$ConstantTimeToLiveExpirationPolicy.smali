.class public Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;
.super Ljava/lang/Object;
.source "PassiveExpiringMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/PassiveExpiringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstantTimeToLiveExpirationPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final timeToLiveMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 89
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-wide p1, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;->timeToLiveMillis:J

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 122
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->access$000(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;-><init>(J)V

    return-void
.end method


# virtual methods
.method public expirationTime(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)J"
        }
    .end annotation

    .line 137
    iget-wide p1, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;->timeToLiveMillis:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const-wide/16 v0, -0x1

    if-ltz p1, :cond_1

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 140
    iget-wide v2, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;->timeToLiveMillis:J

    const-wide v4, 0x7fffffffffffffffL

    sub-long/2addr v4, v2

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr p1, v2

    return-wide p1

    :cond_1
    return-wide v0
.end method
