.class Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$2;
.super Landroidx/room/EntityInsertionAdapter;
.source "ProjectsCategoryDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 67
    iput-object p1, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$2;->this$0:Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p2, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/catrobat/catroid/retrofit/models/ProjectResponse;)V

    return-void
.end method

.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lorg/catrobat/catroid/retrofit/models/ProjectResponse;)V
    .locals 4
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lorg/catrobat/catroid/retrofit/models/ProjectResponse;

    .line 75
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 76
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 80
    :goto_0
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 81
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 85
    :goto_1
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getAuthor()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 86
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 88
    :cond_2
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 90
    :goto_2
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 91
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 93
    :cond_3
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 95
    :goto_3
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 96
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 98
    :cond_4
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 100
    :goto_4
    const/4 v0, 0x6

    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getViews()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 101
    const/4 v0, 0x7

    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getDownload()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 102
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getFlavor()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_5

    .line 103
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 105
    :cond_5
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getFlavor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    :goto_5
    iget-object v0, p0, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl$2;->this$0:Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;

    invoke-static {v0}, Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;->access$000(Lorg/catrobat/catroid/db/ProjectsCategoryDao_Impl;)Lorg/catrobat/catroid/retrofit/converters/StringListConverter;

    move-result-object v0

    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/retrofit/converters/StringListConverter;->stringListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "_tmp":Ljava/lang/String;
    const/16 v1, 0x9

    if-nez v0, :cond_6

    .line 110
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 112
    :cond_6
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 114
    :goto_6
    const/16 v1, 0xa

    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getUploaded()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 115
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getUploadedString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    if-nez v1, :cond_7

    .line 116
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 118
    :cond_7
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getUploadedString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 120
    :goto_7
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getScreenshotLarge()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    if-nez v1, :cond_8

    .line 121
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 123
    :cond_8
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getScreenshotLarge()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 125
    :goto_8
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getScreenshotSmall()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    if-nez v1, :cond_9

    .line 126
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 128
    :cond_9
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getScreenshotSmall()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 130
    :goto_9
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getProjectUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    if-nez v1, :cond_a

    .line 131
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_a

    .line 133
    :cond_a
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getProjectUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 135
    :goto_a
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    if-nez v1, :cond_b

    .line 136
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_b

    .line 138
    :cond_b
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 140
    :goto_b
    const/16 v1, 0x10

    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getFileSize()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 141
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getCategoryType()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    if-nez v1, :cond_c

    .line 142
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_c

    .line 144
    :cond_c
    invoke-virtual {p2}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getCategoryType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 146
    :goto_c
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "INSERT OR REPLACE INTO `project_response` (`id`,`name`,`author`,`description`,`version`,`views`,`download`,`flavor`,`tags`,`uploaded`,`uploadedString`,`screenshotLarge`,`screenshotSmall`,`projectUrl`,`downloadUrl`,`fileSize`,`categoryType`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
