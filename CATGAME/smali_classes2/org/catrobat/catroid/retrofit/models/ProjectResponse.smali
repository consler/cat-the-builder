.class public final Lorg/catrobat/catroid/retrofit/models/ProjectResponse;
.super Ljava/lang/Object;
.source "Models.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008J\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u009b\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0004\u0012\u0006\u0010\u0015\u001a\u00020\u0004\u0012\u0006\u0010\u0016\u001a\u00020\u0004\u0012\u0006\u0010\u0017\u001a\u00020\u0004\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u001bJ\t\u0010L\u001a\u00020\u0004H\u00c6\u0003J\u000f\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0010H\u00c6\u0003J\t\u0010N\u001a\u00020\u0012H\u00c6\u0003J\t\u0010O\u001a\u00020\u0004H\u00c6\u0003J\t\u0010P\u001a\u00020\u0004H\u00c6\u0003J\t\u0010Q\u001a\u00020\u0004H\u00c6\u0003J\t\u0010R\u001a\u00020\u0004H\u00c6\u0003J\t\u0010S\u001a\u00020\u0004H\u00c6\u0003J\t\u0010T\u001a\u00020\u0019H\u00c6\u0003J\t\u0010U\u001a\u00020\u0004H\u00c6\u0003J\t\u0010V\u001a\u00020\u0004H\u00c6\u0003J\t\u0010W\u001a\u00020\u0004H\u00c6\u0003J\t\u0010X\u001a\u00020\u0004H\u00c6\u0003J\t\u0010Y\u001a\u00020\u0004H\u00c6\u0003J\t\u0010Z\u001a\u00020\nH\u00c6\u0003J\t\u0010[\u001a\u00020\nH\u00c6\u0003J\t\u0010\\\u001a\u00020\rH\u00c6\u0003J\t\u0010]\u001a\u00020\u0004H\u00c6\u0003J\u00c3\u0001\u0010^\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0004H\u00c6\u0001J\u0013\u0010_\u001a\u00020\r2\u0008\u0010`\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010a\u001a\u00020\nH\u00d6\u0001J\t\u0010b\u001a\u00020\u0004H\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\u001a\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001d\"\u0004\u0008!\u0010\u001fR\u001a\u0010\u0007\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001d\"\u0004\u0008#\u0010\u001fR\u001a\u0010\u000b\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001a\u0010\u0017\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001d\"\u0004\u0008)\u0010\u001fR\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001a\u0010\u000e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u001d\"\u0004\u0008/\u0010\u001fR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u001d\"\u0004\u00081\u0010\u001fR\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u001d\"\u0004\u00083\u0010\u001fR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u001a\u0010\u0016\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u001d\"\u0004\u00089\u0010\u001fR\u001a\u0010\u0014\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u001d\"\u0004\u0008;\u0010\u001fR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u001d\"\u0004\u0008=\u0010\u001fR \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u001a\u0010\u0013\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u001d\"\u0004\u0008G\u0010\u001fR\u001a\u0010\u0008\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010\u001d\"\u0004\u0008I\u0010\u001fR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010%\"\u0004\u0008K\u0010\'\u00a8\u0006c"
    }
    d2 = {
        "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
        "",
        "()V",
        "id",
        "",
        "name",
        "author",
        "description",
        "version",
        "views",
        "",
        "download",
        "private",
        "",
        "flavor",
        "tags",
        "",
        "uploaded",
        "",
        "uploadedString",
        "screenshotLarge",
        "screenshotSmall",
        "projectUrl",
        "downloadUrl",
        "fileSize",
        "",
        "categoryType",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V",
        "getAuthor",
        "()Ljava/lang/String;",
        "setAuthor",
        "(Ljava/lang/String;)V",
        "getCategoryType",
        "setCategoryType",
        "getDescription",
        "setDescription",
        "getDownload",
        "()I",
        "setDownload",
        "(I)V",
        "getDownloadUrl",
        "setDownloadUrl",
        "getFileSize",
        "()D",
        "setFileSize",
        "(D)V",
        "getFlavor",
        "setFlavor",
        "getId",
        "setId",
        "getName",
        "setName",
        "getPrivate",
        "()Z",
        "setPrivate",
        "(Z)V",
        "getProjectUrl",
        "setProjectUrl",
        "getScreenshotLarge",
        "setScreenshotLarge",
        "getScreenshotSmall",
        "setScreenshotSmall",
        "getTags",
        "()Ljava/util/List;",
        "setTags",
        "(Ljava/util/List;)V",
        "getUploaded",
        "()J",
        "setUploaded",
        "(J)V",
        "getUploadedString",
        "setUploadedString",
        "getVersion",
        "setVersion",
        "getViews",
        "setViews",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private author:Ljava/lang/String;

.field private categoryType:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private download:I

.field private downloadUrl:Ljava/lang/String;

.field private fileSize:D

.field private flavor:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private private:Z

.field private projectUrl:Ljava/lang/String;

.field private screenshotLarge:Ljava/lang/String;

.field private screenshotSmall:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uploaded:J

.field private uploadedString:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private views:I


# direct methods
.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    .line 64
    nop

    .line 65
    nop

    .line 66
    nop

    .line 67
    nop

    .line 68
    nop

    .line 69
    nop

    .line 70
    nop

    .line 71
    nop

    .line 72
    nop

    .line 73
    nop

    .line 74
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 75
    nop

    .line 76
    nop

    .line 77
    nop

    .line 78
    nop

    .line 79
    nop

    .line 80
    nop

    .line 81
    nop

    .line 82
    nop

    .line 64
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const-wide/16 v11, 0x0

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    const-wide/16 v18, 0x0

    const-string v20, ""

    invoke-direct/range {v0 .. v20}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 16
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "author"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "version"    # Ljava/lang/String;
    .param p6, "views"    # I
    .param p7, "download"    # I
    .param p8, "private"    # Z
    .param p9, "flavor"    # Ljava/lang/String;
    .param p10, "tags"    # Ljava/util/List;
    .param p11, "uploaded"    # J
    .param p13, "uploadedString"    # Ljava/lang/String;
    .param p14, "screenshotLarge"    # Ljava/lang/String;
    .param p15, "screenshotSmall"    # Ljava/lang/String;
    .param p16, "projectUrl"    # Ljava/lang/String;
    .param p17, "downloadUrl"    # Ljava/lang/String;
    .param p18, "fileSize"    # D
    .param p20, "categoryType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    move-object/from16 v11, p16

    move-object/from16 v12, p17

    move-object/from16 v13, p20

    const-string v14, "id"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "name"

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "author"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "description"

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "version"

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "flavor"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "tags"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "uploadedString"

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "screenshotLarge"

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "screenshotSmall"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "projectUrl"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "downloadUrl"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "categoryType"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->id:Ljava/lang/String;

    iput-object v2, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->name:Ljava/lang/String;

    iput-object v3, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->author:Ljava/lang/String;

    iput-object v4, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->description:Ljava/lang/String;

    iput-object v5, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->version:Ljava/lang/String;

    move/from16 v14, p6

    iput v14, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->views:I

    move/from16 v15, p7

    iput v15, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->download:I

    move/from16 v1, p8

    iput-boolean v1, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->private:Z

    iput-object v6, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->flavor:Ljava/lang/String;

    iput-object v7, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->tags:Ljava/util/List;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploaded:J

    iput-object v8, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploadedString:Ljava/lang/String;

    iput-object v9, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotLarge:Ljava/lang/String;

    iput-object v10, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotSmall:Ljava/lang/String;

    iput-object v11, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->projectUrl:Ljava/lang/String;

    iput-object v12, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->downloadUrl:Ljava/lang/String;

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->fileSize:D

    iput-object v13, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->categoryType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lorg/catrobat/catroid/retrofit/models/ProjectResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/Object;)Lorg/catrobat/catroid/retrofit/models/ProjectResponse;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->author:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->description:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->version:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->views:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->download:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->private:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->flavor:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->tags:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-wide v12, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploaded:J

    goto :goto_a

    :cond_a
    move-wide/from16 v12, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploadedString:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotLarge:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotSmall:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->projectUrl:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->downloadUrl:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p13, v14

    move-object/from16 p17, v15

    if-eqz v16, :cond_10

    iget-wide v14, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->fileSize:D

    goto :goto_10

    :cond_10
    move-wide/from16 v14, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_11

    iget-object v1, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->categoryType:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p20

    :goto_11
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-wide/from16 p11, v12

    move-wide/from16 p18, v14

    move-object/from16 p20, v1

    invoke-virtual/range {p0 .. p20}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Lorg/catrobat/catroid/retrofit/models/ProjectResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final component11()J
    .locals 2

    iget-wide v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploaded:J

    return-wide v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploadedString:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotLarge:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotSmall:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->projectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()D
    .locals 2

    iget-wide v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->fileSize:D

    return-wide v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->categoryType:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->views:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->download:I

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->private:Z

    return v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->flavor:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Lorg/catrobat/catroid/retrofit/models/ProjectResponse;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            ")",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-wide/from16 v18, p18

    move-object/from16 v20, p20

    const-string v0, "id"

    move-object/from16 v21, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "author"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flavor"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadedString"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenshotLarge"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenshotSmall"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectUrl"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadUrl"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryType"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v22, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct/range {v0 .. v20}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    return-object v22
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->id:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->author:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->author:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->description:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->version:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->views:I

    iget v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->views:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->download:I

    iget v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->download:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->private:Z

    iget-boolean v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->private:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->flavor:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->flavor:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->tags:Ljava/util/List;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->tags:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploaded:J

    iget-wide v2, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploaded:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploadedString:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploadedString:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotLarge:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotLarge:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotSmall:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotSmall:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->projectUrl:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->projectUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->downloadUrl:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->downloadUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->fileSize:D

    iget-wide v2, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->fileSize:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->categoryType:Ljava/lang/String;

    iget-object p1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->categoryType:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAuthor()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final getCategoryType()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->categoryType:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownload()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->download:I

    return v0
.end method

.method public final getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileSize()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->fileSize:D

    return-wide v0
.end method

.method public final getFlavor()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->flavor:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrivate()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->private:Z

    return v0
.end method

.method public final getProjectUrl()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->projectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreenshotLarge()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotLarge:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreenshotSmall()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotSmall:Ljava/lang/String;

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getUploaded()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploaded:J

    return-wide v0
.end method

.method public final getUploadedString()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploadedString:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final getViews()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->views:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->author:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->description:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->version:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->views:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->download:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->private:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->flavor:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->tags:Ljava/util/List;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploaded:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploadedString:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_8
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotLarge:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_9
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotSmall:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_a
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->projectUrl:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_b
    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->downloadUrl:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_c
    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->fileSize:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->categoryType:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_d
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAuthor(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->author:Ljava/lang/String;

    return-void
.end method

.method public final setCategoryType(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->categoryType:Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDownload(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 51
    iput p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->download:I

    return-void
.end method

.method public final setDownloadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public final setFileSize(D)V
    .locals 0
    .param p1, "<set-?>"    # D

    .line 61
    iput-wide p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->fileSize:D

    return-void
.end method

.method public final setFlavor(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->flavor:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->id:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPrivate(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 52
    iput-boolean p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->private:Z

    return-void
.end method

.method public final setProjectUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->projectUrl:Ljava/lang/String;

    return-void
.end method

.method public final setScreenshotLarge(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotLarge:Ljava/lang/String;

    return-void
.end method

.method public final setScreenshotSmall(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotSmall:Ljava/lang/String;

    return-void
.end method

.method public final setTags(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->tags:Ljava/util/List;

    return-void
.end method

.method public final setUploaded(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 55
    iput-wide p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploaded:J

    return-void
.end method

.method public final setUploadedString(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploadedString:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->version:Ljava/lang/String;

    return-void
.end method

.method public final setViews(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 50
    iput p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->views:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectResponse(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", views="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->views:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", download="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->download:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", private="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->private:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", flavor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->flavor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploaded:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uploadedString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->uploadedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", screenshotLarge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotLarge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", screenshotSmall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->screenshotSmall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", projectUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->projectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->fileSize:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", categoryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->categoryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
