.class public final Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008/\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0093\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0002\u0010\u0019J\t\u00101\u001a\u00020\u0003H\u00c6\u0003J\u000f\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000fH\u00c6\u0003J\t\u00103\u001a\u00020\u0011H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\t\u00106\u001a\u00020\u0003H\u00c6\u0003J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\t\u00109\u001a\u00020\u0018H\u00c6\u0003J\t\u0010:\u001a\u00020\u0003H\u00c6\u0003J\t\u0010;\u001a\u00020\u0003H\u00c6\u0003J\t\u0010<\u001a\u00020\u0003H\u00c6\u0003J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\t\u0010>\u001a\u00020\tH\u00c6\u0003J\t\u0010?\u001a\u00020\tH\u00c6\u0003J\t\u0010@\u001a\u00020\u000cH\u00c6\u0003J\t\u0010A\u001a\u00020\u0003H\u00c6\u0003J\u00b9\u0001\u0010B\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018H\u00c6\u0001J\u0013\u0010C\u001a\u00020\u000c2\u0008\u0010D\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010E\u001a\u00020\tH\u00d6\u0001J\t\u0010F\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001bR\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u0016\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001bR\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001bR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001bR\u0011\u0010\u0013\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001bR\u0011\u0010\u0014\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001bR\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0011\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u001bR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u001bR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\u001e\u00a8\u0006G"
    }
    d2 = {
        "Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;",
        "",
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
        "uploaded_string",
        "screenshot_large",
        "screenshot_small",
        "project_url",
        "download_url",
        "filesize",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V",
        "getAuthor",
        "()Ljava/lang/String;",
        "getDescription",
        "getDownload",
        "()I",
        "getDownload_url",
        "getFilesize",
        "()D",
        "getFlavor",
        "getId",
        "getName",
        "getPrivate",
        "()Z",
        "getProject_url",
        "getScreenshot_large",
        "getScreenshot_small",
        "getTags",
        "()Ljava/util/List;",
        "getUploaded",
        "()J",
        "getUploaded_string",
        "getVersion",
        "getViews",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
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
.field private final author:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final download:I

.field private final download_url:Ljava/lang/String;

.field private final filesize:D

.field private final flavor:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final private:Z

.field private final project_url:Ljava/lang/String;

.field private final screenshot_large:Ljava/lang/String;

.field private final screenshot_small:Ljava/lang/String;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uploaded:J

.field private final uploaded_string:Ljava/lang/String;

.field private final version:Ljava/lang/String;

.field private final views:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
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
    .param p13, "uploaded_string"    # Ljava/lang/String;
    .param p14, "screenshot_large"    # Ljava/lang/String;
    .param p15, "screenshot_small"    # Ljava/lang/String;
    .param p16, "project_url"    # Ljava/lang/String;
    .param p17, "download_url"    # Ljava/lang/String;
    .param p18, "filesize"    # D
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
            "D)V"
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

    const-string v13, "id"

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "name"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "author"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "description"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "version"

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "flavor"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "tags"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "uploaded_string"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "screenshot_large"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "screenshot_small"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "project_url"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "download_url"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->id:Ljava/lang/String;

    iput-object v2, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->name:Ljava/lang/String;

    iput-object v3, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->author:Ljava/lang/String;

    iput-object v4, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->description:Ljava/lang/String;

    iput-object v5, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->version:Ljava/lang/String;

    move/from16 v13, p6

    iput v13, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->views:I

    move/from16 v14, p7

    iput v14, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download:I

    move/from16 v15, p8

    iput-boolean v15, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->private:Z

    iput-object v6, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->flavor:Ljava/lang/String;

    iput-object v7, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->tags:Ljava/util/List;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded:J

    iput-object v8, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded_string:Ljava/lang/String;

    iput-object v9, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_large:Ljava/lang/String;

    iput-object v10, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_small:Ljava/lang/String;

    iput-object v11, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->project_url:Ljava/lang/String;

    iput-object v12, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download_url:Ljava/lang/String;

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->filesize:D

    return-void
.end method

.method public static synthetic copy$default(Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/Object;)Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p20

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->author:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->description:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->version:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->views:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->private:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->flavor:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->tags:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-wide v12, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded:J

    goto :goto_a

    :cond_a
    move-wide/from16 v12, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded_string:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_large:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_small:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->project_url:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download_url:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v1, v1, v16

    move-object/from16 p13, v14

    move-object/from16 p17, v15

    if-eqz v1, :cond_10

    iget-wide v14, v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->filesize:D

    goto :goto_10

    :cond_10
    move-wide/from16 v14, p18

    :goto_10
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

    invoke-virtual/range {p0 .. p19}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->id:Ljava/lang/String;

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

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final component11()J
    .locals 2

    iget-wide v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded:J

    return-wide v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded_string:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_large:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_small:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->project_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()D
    .locals 2

    iget-wide v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->filesize:D

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->views:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download:I

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->private:Z

    return v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->flavor:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;
    .locals 22
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
            "D)",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;"
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

    const-string v0, "id"

    move-object/from16 v20, v1

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

    const-string v0, "uploaded_string"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenshot_large"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenshot_small"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "project_url"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "download_url"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v21, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct/range {v0 .. v19}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-object v21
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->id:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->author:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->author:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->description:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->version:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->views:I

    iget v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->views:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download:I

    iget v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->private:Z

    iget-boolean v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->private:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->flavor:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->flavor:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->tags:Ljava/util/List;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->tags:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded:J

    iget-wide v2, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded_string:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded_string:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_large:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_large:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_small:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_small:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->project_url:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->project_url:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download_url:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download_url:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->filesize:D

    iget-wide v2, p1, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->filesize:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_0

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

    .line 112
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownload()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download:I

    return v0
.end method

.method public final getDownload_url()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilesize()D
    .locals 2

    .line 126
    iget-wide v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->filesize:D

    return-wide v0
.end method

.method public final getFlavor()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->flavor:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrivate()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->private:Z

    return v0
.end method

.method public final getProject_url()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->project_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreenshot_large()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_large:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreenshot_small()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_small:Ljava/lang/String;

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

    .line 119
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getUploaded()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded:J

    return-wide v0
.end method

.method public final getUploaded_string()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded_string:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final getViews()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->views:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->author:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->description:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->version:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->views:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->private:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->flavor:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->tags:Ljava/util/List;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded_string:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_8
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_large:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_9
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_small:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_a
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->project_url:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_b
    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download_url:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->filesize:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectResponseApi(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", views="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->views:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", download="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", private="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->private:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", flavor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->flavor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uploaded_string="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->uploaded_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", screenshot_large="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_large:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", screenshot_small="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->screenshot_small:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", project_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->project_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", download_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->download_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filesize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->filesize:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
