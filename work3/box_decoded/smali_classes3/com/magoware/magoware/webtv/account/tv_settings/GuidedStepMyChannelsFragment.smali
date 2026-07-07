.class public Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;
.super Landroidx/leanback/app/GuidedStepSupportFragment;
.source "GuidedStepMyChannelsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GuidedStepMyChannelsFragment"


# instance fields
.field private activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

.field private cat:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private categories_hash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private category:Landroid/widget/TextView;

.field private category_response:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private channel_number:Landroid/widget/TextView;

.field private channelsTable:Landroid/widget/TableLayout;

.field private delet_channel:Landroid/app/AlertDialog$Builder;

.field private deleteBtn:Landroid/widget/Button;

.field private deleteBtnLayout:Landroid/widget/LinearLayout;

.field private deleteButtonText:Ljava/lang/String;

.field private description:Landroid/widget/TextView;

.field private editBtn:Landroid/widget/Button;

.field private editBtnLayout:Landroid/widget/LinearLayout;

.field private editButtonText:Ljava/lang/String;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private resources:Landroid/content/res/Resources;

.field private stream_url:Landroid/widget/TextView;

.field private text_color:I

.field private thisActivity:Landroid/app/Activity;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/leanback/app/GuidedStepSupportFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$populateTable$2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$populateTable$7(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$populateTable$8(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private populateTable(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;",
            ">;)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 116
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v2, 0x32

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 118
    invoke-static {}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllCategoriesObjects()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->cat:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 119
    :goto_0
    iget-object v4, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->cat:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->categories_hash:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->cat:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget v5, v5, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->cat:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget-object v6, v6, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 124
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 125
    new-instance v4, Landroid/widget/TableRow;

    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 126
    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setFocusable(Z)V

    .line 127
    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setFocusableInTouchMode(Z)V

    .line 128
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->resources:Landroid/content/res/Resources;

    const v6, 0x7f080189

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;

    .line 131
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    const/16 v7, 0x11

    .line 132
    iput v7, v6, Landroid/widget/TableRow$LayoutParams;->gravity:I

    .line 133
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v8}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 134
    iput v7, v8, Landroid/widget/TableRow$LayoutParams;->gravity:I

    .line 135
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v9}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 136
    iput v7, v9, Landroid/widget/TableRow$LayoutParams;->gravity:I

    .line 139
    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    const/16 v10, 0x96

    const/4 v11, -0x2

    invoke-direct {v7, v10, v11}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/16 v10, 0xa

    .line 140
    invoke-virtual {v7, v2, v10, v10, v10}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 141
    iput v2, v6, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 142
    iput v2, v8, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 143
    iput v2, v9, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 144
    iput v2, v7, Landroid/widget/TableRow$LayoutParams;->width:I

    const/high16 v11, 0x3f800000    # 1.0f

    .line 145
    iput v11, v6, Landroid/widget/TableRow$LayoutParams;->weight:F

    const/high16 v11, 0x40400000    # 3.0f

    .line 146
    iput v11, v8, Landroid/widget/TableRow$LayoutParams;->weight:F

    .line 147
    iput v11, v9, Landroid/widget/TableRow$LayoutParams;->weight:F

    const/high16 v11, 0x40000000    # 2.0f

    .line 148
    iput v11, v7, Landroid/widget/TableRow$LayoutParams;->weight:F

    .line 149
    invoke-virtual {v6, v1, v2, v2, v2}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 155
    new-instance v11, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;

    iget-object v12, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channel_number:Landroid/widget/TextView;

    .line 156
    new-instance v11, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;

    iget-object v12, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->title:Landroid/widget/TextView;

    .line 157
    new-instance v11, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;

    iget-object v12, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->description:Landroid/widget/TextView;

    .line 158
    new-instance v11, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;

    iget-object v12, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->stream_url:Landroid/widget/TextView;

    .line 159
    new-instance v11, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansBoldButton;

    iget-object v12, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansBoldButton;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->editBtn:Landroid/widget/Button;

    .line 160
    new-instance v11, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansBoldButton;

    iget-object v12, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansBoldButton;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteBtn:Landroid/widget/Button;

    .line 161
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->editBtnLayout:Landroid/widget/LinearLayout;

    .line 162
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteBtnLayout:Landroid/widget/LinearLayout;

    .line 163
    new-instance v11, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;

    iget-object v12, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Lcom/magoware/magoware/webtv/custom_views/JosefinSansText/JosefinSansTextRegular;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->category:Landroid/widget/TextView;

    .line 166
    iget-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channel_number:Landroid/widget/TextView;

    div-int/lit8 v12, v0, 0x5a

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setWidth(I)V

    .line 167
    iget-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->title:Landroid/widget/TextView;

    div-int/lit8 v10, v0, 0xa

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setWidth(I)V

    .line 168
    iget-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->category:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setWidth(I)V

    .line 169
    iget-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->description:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setWidth(I)V

    .line 170
    iget-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->stream_url:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setWidth(I)V

    .line 172
    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channel_number:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    .line 173
    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->title:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    .line 174
    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->category:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    .line 175
    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->description:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    .line 176
    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->stream_url:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    .line 178
    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channel_number:Landroid/widget/TextView;

    iget-object v11, v5, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->channel_number:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->title:Landroid/widget/TextView;

    iget-object v11, v5, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->category:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->categories_hash:Ljava/util/HashMap;

    iget v12, v5, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->genre_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->description:Landroid/widget/TextView;

    iget-object v11, v5, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->description:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->stream_url:Landroid/widget/TextView;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;->stream_url:Ljava/lang/String;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->editBtn:Landroid/widget/Button;

    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->editButtonText:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->editBtn:Landroid/widget/Button;

    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->resources:Landroid/content/res/Resources;

    const v11, 0x7f080102

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->editBtn:Landroid/widget/Button;

    iget v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->text_color:I

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 190
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteBtn:Landroid/widget/Button;

    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteButtonText:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteBtn:Landroid/widget/Button;

    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->resources:Landroid/content/res/Resources;

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteBtn:Landroid/widget/Button;

    iget v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->text_color:I

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 194
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channel_number:Landroid/widget/TextView;

    const/4 v10, 0x2

    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v5, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 195
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 196
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->category:Landroid/widget/TextView;

    invoke-virtual {v5, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 197
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 198
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->stream_url:Landroid/widget/TextView;

    invoke-virtual {v5, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 199
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->editBtn:Landroid/widget/Button;

    invoke-virtual {v5, v10, v11}, Landroid/widget/Button;->setTextSize(IF)V

    .line 200
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteBtn:Landroid/widget/Button;

    const/high16 v11, 0x41700000    # 15.0f

    invoke-virtual {v5, v10, v11}, Landroid/widget/Button;->setTextSize(IF)V

    .line 202
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteBtn:Landroid/widget/Button;

    sget-object v10, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$oHSpXtm0rNXBdWJDpNNKLp64Ar8;->INSTANCE:Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$oHSpXtm0rNXBdWJDpNNKLp64Ar8;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance v5, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$RgOJ-YPsiyl-KNe7Gn2xiBOs8hU;

    invoke-direct {v5, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$RgOJ-YPsiyl-KNe7Gn2xiBOs8hU;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->editBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0703aa

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setWidth(I)V

    .line 350
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->editBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->editBtnLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->editBtn:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setWidth(I)V

    .line 354
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteBtnLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteBtn:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channel_number:Landroid/widget/TextView;

    iget v7, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->text_color:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->title:Landroid/widget/TextView;

    iget v7, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->text_color:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->category:Landroid/widget/TextView;

    iget v7, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->text_color:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->description:Landroid/widget/TextView;

    iget v7, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->text_color:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->stream_url:Landroid/widget/TextView;

    iget v7, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->text_color:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channel_number:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->category:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->stream_url:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channel_number:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 372
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 373
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->description:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 374
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->stream_url:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 375
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->category:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 383
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->editBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 384
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 388
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->editBtnLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteBtnLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 391
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v5, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$GuidedStepMyChannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 77
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 78
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 79
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->category_response:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    .line 80
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onCreate$1$GuidedStepMyChannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->populateTable(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 93
    :cond_1
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    const v1, 0x7f1402d8

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$populateTable$10$GuidedStepMyChannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 296
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 297
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->populateTable(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 302
    :cond_1
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 305
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    const v1, 0x7f1402d8

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$populateTable$11$GuidedStepMyChannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 5

    const-string v0, " : "

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 279
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 280
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1400c0

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 284
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getChannelsListObservable()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$eiweQBibfVhBZ5-RaVg9v_ZFf7w;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$eiweQBibfVhBZ5-RaVg9v_ZFf7w;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 294
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getCustomerChannelsObservable()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$2zxTTYj30bDGHt-bLfFKnzQXG0s;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$2zxTTYj30bDGHt-bLfFKnzQXG0s;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_1

    .line 309
    :cond_1
    iget-object v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-eqz v2, :cond_2

    .line 310
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 312
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    const v0, 0x7f1402d8

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$populateTable$12$GuidedStepMyChannelsFragment(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 276
    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->deleteChannelObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance p3, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$MOPP-p3G_edi5VJIKEi4AB5Ub4A;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$MOPP-p3G_edi5VJIKEi4AB5Ub4A;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;)V

    invoke-virtual {p1, p2, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public synthetic lambda$populateTable$13$GuidedStepMyChannelsFragment(Landroid/view/View;)V
    .locals 7

    .line 207
    check-cast p1, Landroid/widget/TableRow;

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p1, v0}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 209
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const v2, 0x7f140118

    const v3, 0x7f140083

    const v4, 0x7f1400f8

    const/16 v5, 0x14

    if-le v0, v5, :cond_0

    .line 212
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f150002

    invoke-direct {v0, v5, v6}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->delet_channel:Landroid/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0802eb

    .line 214
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f14044e

    .line 215
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$UUC3dkfBrTh-3VtxcN3QSwLfCK8;

    invoke-direct {v4, p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$UUC3dkfBrTh-3VtxcN3QSwLfCK8;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 262
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$4Fh-c-svaNV2AslQka-PkfI9zJ0;->INSTANCE:Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$4Fh-c-svaNV2AslQka-PkfI9zJ0;

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 266
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 268
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->delet_channel:Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$fuFMrxFSTnT4OwCKRsxPuRHAQ9E;->INSTANCE:Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$fuFMrxFSTnT4OwCKRsxPuRHAQ9E;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$_nAIGuWVsvMSgokIuxbOmfXxbjQ;

    invoke-direct {v3, p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$_nAIGuWVsvMSgokIuxbOmfXxbjQ;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 317
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method

.method public synthetic lambda$populateTable$3$GuidedStepMyChannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 230
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 231
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 232
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->category_response:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    .line 233
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$populateTable$4$GuidedStepMyChannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 241
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->populateTable(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 246
    :cond_1
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 249
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    const v1, 0x7f1402d8

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$populateTable$5$GuidedStepMyChannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 5

    const-string v0, " : "

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 223
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 224
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1400c0

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 228
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getChannelsListObservable()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$kGJhOZn4G6D7WSgzaTatErqkkgQ;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$kGJhOZn4G6D7WSgzaTatErqkkgQ;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 238
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getCustomerChannelsObservable()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$IMAdnD19gXvBuEZQL8oqxnm3MJI;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$IMAdnD19gXvBuEZQL8oqxnm3MJI;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_1

    .line 253
    :cond_1
    iget-object v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    if-eqz v2, :cond_2

    .line 254
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 256
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    const v0, 0x7f1402d8

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$populateTable$6$GuidedStepMyChannelsFragment(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 220
    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->deleteChannelObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance p3, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$NRjCRMeTU-imPBfBbhYKZWIHxDE;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$NRjCRMeTU-imPBfBbhYKZWIHxDE;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;)V

    invoke-virtual {p1, p2, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public synthetic lambda$populateTable$9$GuidedStepMyChannelsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 286
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 287
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 288
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->category_response:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    .line 289
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 291
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 68
    invoke-super {p0, p1}, Landroidx/leanback/app/GuidedStepSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->categories_hash:Ljava/util/HashMap;

    const p1, 0x7f1402d2

    .line 70
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->editButtonText:Ljava/lang/String;

    const p1, 0x7f140118

    .line 71
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->deleteButtonText:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->resources:Landroid/content/res/Resources;

    .line 73
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-static {p1}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 75
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getChannelsListObservable()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$y7ZvVJnKg765LmeVEparmsMab4w;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$y7ZvVJnKg765LmeVEparmsMab4w;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 85
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getCustomerChannelsObservable()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$pLUd2z_9g_XtCYchWi9G7iPml4Q;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepMyChannelsFragment$pLUd2z_9g_XtCYchWi9G7iPml4Q;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0e0185

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b0472

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableLayout;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->channelsTable:Landroid/widget/TableLayout;

    .line 107
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060005

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->text_color:I

    .line 108
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepMyChannelsFragment;->thisActivity:Landroid/app/Activity;

    return-object p1
.end method
