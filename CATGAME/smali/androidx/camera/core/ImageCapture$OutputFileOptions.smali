.class public final Landroidx/camera/core/ImageCapture$OutputFileOptions;
.super Ljava/lang/Object;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputFileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY_METADATA:Landroidx/camera/core/ImageCapture$Metadata;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContentValues:Landroid/content/ContentValues;

.field private final mFile:Ljava/io/File;

.field private final mMetadata:Landroidx/camera/core/ImageCapture$Metadata;

.field private final mOutputStream:Ljava/io/OutputStream;

.field private final mSaveCollection:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1497
    new-instance v0, Landroidx/camera/core/ImageCapture$Metadata;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$Metadata;-><init>()V

    sput-object v0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->EMPTY_METADATA:Landroidx/camera/core/ImageCapture$Metadata;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/io/OutputStream;Landroidx/camera/core/ImageCapture$Metadata;)V
    .locals 0

    .line 1517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1518
    iput-object p1, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mFile:Ljava/io/File;

    .line 1519
    iput-object p2, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mContentResolver:Landroid/content/ContentResolver;

    .line 1520
    iput-object p3, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mSaveCollection:Landroid/net/Uri;

    .line 1521
    iput-object p4, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mContentValues:Landroid/content/ContentValues;

    .line 1522
    iput-object p5, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mOutputStream:Ljava/io/OutputStream;

    if-nez p6, :cond_0

    .line 1523
    sget-object p6, Landroidx/camera/core/ImageCapture$OutputFileOptions;->EMPTY_METADATA:Landroidx/camera/core/ImageCapture$Metadata;

    :cond_0
    iput-object p6, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mMetadata:Landroidx/camera/core/ImageCapture$Metadata;

    return-void
.end method


# virtual methods
.method getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 1533
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method getContentValues()Landroid/content/ContentValues;
    .locals 1

    .line 1543
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method getFile()Ljava/io/File;
    .locals 1

    .line 1528
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mFile:Ljava/io/File;

    return-object v0
.end method

.method getMetadata()Landroidx/camera/core/ImageCapture$Metadata;
    .locals 1

    .line 1553
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mMetadata:Landroidx/camera/core/ImageCapture$Metadata;

    return-object v0
.end method

.method getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1548
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method getSaveCollection()Landroid/net/Uri;
    .locals 1

    .line 1538
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mSaveCollection:Landroid/net/Uri;

    return-object v0
.end method
