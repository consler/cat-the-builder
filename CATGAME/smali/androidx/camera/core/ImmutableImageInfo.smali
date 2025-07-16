.class abstract Landroidx/camera/core/ImmutableImageInfo;
.super Ljava/lang/Object;
.source "ImmutableImageInfo.java"

# interfaces
.implements Landroidx/camera/core/ImageInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Object;JI)Landroidx/camera/core/ImageInfo;
    .locals 1

    .line 26
    new-instance v0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/core/AutoValue_ImmutableImageInfo;-><init>(Ljava/lang/Object;JI)V

    return-object v0
.end method


# virtual methods
.method public abstract getRotationDegrees()I
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract getTimestamp()J
.end method
