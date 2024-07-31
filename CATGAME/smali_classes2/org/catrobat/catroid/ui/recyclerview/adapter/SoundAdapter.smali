.class public final Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;
.source "SoundAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<",
        "Lorg/catrobat/catroid/common/SoundInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0017\u0012\u0010\u0010\u0003\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0002H\u0002J\u001a\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0008H\u0016J\u0012\u0010\u0013\u001a\u00020\u000f2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0002J$\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u0002J\u0008\u0010\u0016\u001a\u00020\u000fH\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;",
        "Lorg/catrobat/catroid/common/SoundInfo;",
        "items",
        "",
        "(Ljava/util/List;)V",
        "currentPlaying",
        "currentPlayingPosition",
        "",
        "mediaPlayer",
        "Landroid/media/MediaPlayer;",
        "getSoundDuration",
        "",
        "sound",
        "onBindViewHolder",
        "",
        "holder",
        "Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;",
        "position",
        "playSound",
        "setAndPlaySound",
        "item",
        "stopSound",
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
.field private currentPlaying:Lorg/catrobat/catroid/common/SoundInfo;

.field private currentPlayingPosition:I

.field private mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "items"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/common/SoundInfo;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;-><init>(Ljava/util/List;)V

    .line 40
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static final synthetic access$getCurrentPlaying$p(Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;)Lorg/catrobat/catroid/common/SoundInfo;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->currentPlaying:Lorg/catrobat/catroid/common/SoundInfo;

    return-object v0
.end method

.method public static final synthetic access$getCurrentPlayingPosition$p(Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;

    .line 38
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->currentPlayingPosition:I

    return v0
.end method

.method public static final synthetic access$getMediaPlayer$p(Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static final synthetic access$setAndPlaySound(Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;ILorg/catrobat/catroid/common/SoundInfo;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;
    .param p2, "position"    # I
    .param p3, "item"    # Lorg/catrobat/catroid/common/SoundInfo;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->setAndPlaySound(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;ILorg/catrobat/catroid/common/SoundInfo;)V

    return-void
.end method

.method public static final synthetic access$setCurrentPlaying$p(Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;Lorg/catrobat/catroid/common/SoundInfo;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/common/SoundInfo;

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->currentPlaying:Lorg/catrobat/catroid/common/SoundInfo;

    return-void
.end method

.method public static final synthetic access$setCurrentPlayingPosition$p(Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;
    .param p1, "<set-?>"    # I

    .line 38
    iput p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->currentPlayingPosition:I

    return-void
.end method

.method public static final synthetic access$setMediaPlayer$p(Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;
    .param p1, "<set-?>"    # Landroid/media/MediaPlayer;

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method private final getSoundDuration(Lorg/catrobat/catroid/common/SoundInfo;)Ljava/lang/String;
    .locals 10
    .param p1, "sound"    # Lorg/catrobat/catroid/common/SoundInfo;

    .line 91
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 92
    .local v0, "metadataRetriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {p1}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 94
    nop

    .line 95
    nop

    .line 94
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 95
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, v2

    .line 94
    :goto_1
    nop

    .line 97
    .local v4, "duration":J
    nop

    .line 98
    const/16 v1, 0x3e8

    int-to-long v6, v1

    div-long v8, v4, v6

    cmp-long v1, v8, v2

    if-nez v1, :cond_2

    const-wide/16 v1, 0x1

    goto :goto_2

    :cond_2
    div-long v1, v4, v6

    .line 99
    .end local v4    # "duration":J
    .local v1, "duration":J
    :goto_2
    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DateUtils.formatElapsedTime(duration)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method private final playSound(Lorg/catrobat/catroid/common/SoundInfo;)V
    .locals 3
    .param p1, "sound"    # Lorg/catrobat/catroid/common/SoundInfo;

    .line 103
    nop

    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 105
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 106
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 108
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ERROR]"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 112
    return-void
.end method

.method private final setAndPlaySound(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;ILorg/catrobat/catroid/common/SoundInfo;)V
    .locals 2
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;
    .param p2, "position"    # I
    .param p3, "item"    # Lorg/catrobat/catroid/common/SoundInfo;

    .line 83
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f080175

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :cond_0
    invoke-direct {p0, p3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->playSound(Lorg/catrobat/catroid/common/SoundInfo;)V

    .line 85
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$setAndPlaySound$1;

    invoke-direct {v1, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$setAndPlaySound$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;)V

    check-cast v1, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 86
    iput-object p3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->currentPlaying:Lorg/catrobat/catroid/common/SoundInfo;

    .line 87
    iput p2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->currentPlayingPosition:I

    .line 88
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;I)V
    .locals 11
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;
    .param p2, "position"    # I

    .line 45
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/SoundInfo;

    .line 47
    .local v0, "item":Lorg/catrobat/catroid/common/SoundInfo;
    if-eqz p1, :cond_1

    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/SoundInfo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const v2, 0x7f080177

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter$onBindViewHolder$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;Lorg/catrobat/catroid/common/SoundInfo;I)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_3
    if-eqz p1, :cond_7

    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 64
    .local v1, "context":Landroid/content/Context;
    if-eqz v0, :cond_6

    .line 66
    iget-boolean v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->showDetails:Z

    const-string v3, "java.lang.String.format(locale, format, *args)"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 67
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 69
    const v7, 0x7f12074f

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "context.getString(R.string.sound_details)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    .line 70
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->getSoundDuration(Lorg/catrobat/catroid/common/SoundInfo;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    .line 71
    invoke-virtual {v0}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->getSizeAsString(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v5

    .line 67
    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 74
    :cond_4
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 76
    const v7, 0x7f120750

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "context.getString(R.string.sound_duration)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v8, v5, [Ljava/lang/Object;

    .line 77
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->getSoundDuration(Lorg/catrobat/catroid/common/SoundInfo;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 74
    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_5
    :goto_1
    nop

    .line 80
    return-void

    .line 64
    :cond_6
    return-void

    .line 63
    .end local v1    # "context":Landroid/content/Context;
    :cond_7
    return-void
.end method

.method public stopSound()V
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SoundAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 116
    return-void
.end method
