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

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;, "Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy<TK;TV;>;"
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;-><init>(J)V

    .line 90
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "timeToLiveMillis"    # J

    .line 104
    .local p0, "this":Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;, "Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-wide p1, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;->timeToLiveMillis:J

    .line 106
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "timeToLive"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 122
    .local p0, "this":Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;, "Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy<TK;TV;>;"
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->access$000(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;-><init>(J)V

    .line 123
    return-void
.end method


# virtual methods
.method public expirationTime(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)J"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;, "Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-wide v0, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;->timeToLiveMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v1, -0x1

    if-ltz v0, :cond_1

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 140
    .local v3, "now":J
    const-wide v5, 0x7fffffffffffffffL

    iget-wide v7, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;->timeToLiveMillis:J

    sub-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 143
    return-wide v1

    .line 147
    :cond_0
    add-long/2addr v7, v3

    return-wide v7

    .line 151
    .end local v3    # "now":J
    :cond_1
    return-wide v1
.end method
