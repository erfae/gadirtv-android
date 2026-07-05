.class public Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AddChannelDlgFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$onSendMyGroupNamesListener;
    }
.end annotation


# instance fields
.field public btn_back:Landroid/widget/ImageButton;

.field public categoryModelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field public category_pos:I

.field public channelRecyclerAdapter:Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;

.field public channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public checkedItems:[Z

.field public epgChannels:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;"
        }
    .end annotation
.end field

.field public groupDlgFragment:Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;

.field public image_add:Landroid/widget/ImageView;

.field public is_m3u:Z

.field public key:Ljava/lang/String;

.field public listener:Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$onSendMyGroupNamesListener;

.field public ly_category:Landroid/widget/LinearLayout;

.field public ly_complete:Landroid/widget/LinearLayout;

.field public ly_search:Landroid/widget/LinearLayout;

.field public myChannelNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public myChannelRecyclerAdapter:Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

.field public my_channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public searchChannelDlgFragment:Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;

.field public selected_category:I

.field public str_add_channel:Landroid/widget/TextView;

.field public str_check:Landroid/widget/TextView;

.field public str_complete:Landroid/widget/TextView;

.field public str_search:Landroid/widget/TextView;

.field public txt_category:Landroid/widget/TextView;

.field public txt_category_name:Landroid/widget/TextView;

.field public txt_count:Landroid/widget/TextView;

.field public txt_my_category:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$KJajaR-JD-ebUTQjMPhwOEOpDP8(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->lambda$showSearchDlgFragment$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RUjvBU9Fq3tkmYHodO4KcAzgsR4(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->lambda$onCreateView$2(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$X5OMXw4ugxH-Dkma2T0O7YB9OTk(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->lambda$onCreateView$0(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a3Ca3svU0D_JJk42AtihOwLhwr8(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->lambda$showGroupDlgFragment$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n5EKlLjG_1zn1_hHHSGAEUSysks(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->lambda$onCreateView$1(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->selected_category:I

    .line 4
    iput-boolean v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->is_m3u:Z

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f0b0238

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->ly_category:Landroid/widget/LinearLayout;

    const v0, 0x7f0b024e

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->ly_search:Landroid/widget/LinearLayout;

    const v0, 0x7f0b023c

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->ly_complete:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0088

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->btn_back:Landroid/widget/ImageButton;

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->ly_category:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->ly_complete:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b03c0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->txt_category:Landroid/widget/TextView;

    const v0, 0x7f0b03c1

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->txt_category_name:Landroid/widget/TextView;

    const v0, 0x7f0b03c7

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->txt_count:Landroid/widget/TextView;

    const v0, 0x7f0b03e3

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->txt_my_category:Landroid/widget/TextView;

    const v0, 0x7f0b0370

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->str_search:Landroid/widget/TextView;

    const v0, 0x7f0b035b

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->str_complete:Landroid/widget/TextView;

    const v0, 0x7f0b03b7

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->str_add_channel:Landroid/widget/TextView;

    const v0, 0x7f0b01e7

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f0b00bb

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b02ab

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/LiveVerticalGridView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->my_channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    const v0, 0x7f0b0359

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->str_check:Landroid/widget/TextView;

    const v0, 0x7f0b01c2

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->image_add:Landroid/widget/ImageView;

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->str_search:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getStr_search_channels()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->str_complete:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getStr_complete()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->str_add_channel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getStr_add_channels()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->str_check:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getStr_mark_channels()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 4

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 2
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_35

    .line 3
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 4
    :cond_1c
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 6
    :cond_35
    :goto_35
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-lez p1, :cond_50

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->my_channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->str_check:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->image_add:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5f

    .line 10
    :cond_50
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->my_channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->str_check:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->image_add:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    :goto_5f
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelRecyclerAdapter:Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-virtual {p1, p2, p3}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->setChannelData(Ljava/util/List;Z)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->txt_count:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/300"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onCreateView$1(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 5

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 2
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelRecyclerAdapter:Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->setChannelData(Ljava/util/List;Z)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->txt_count:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/300"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->key:Ljava/lang/String;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-virtual {p1, p2, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceMyGroupChannels(Ljava/lang/String;Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->checkedItems:[Z

    .line 7
    :goto_42
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    if-ge p3, p1, :cond_65

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->checkedItems:[Z

    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v0, p3}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    aput-boolean p2, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_42

    .line 9
    :cond_65
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channelRecyclerAdapter:Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;

    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->checkedItems:[Z

    invoke-virtual {p1, p2, p3}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->setChannelData(Ljava/util/List;[Z)V

    :cond_6e
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onCreateView$2(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_6a

    const/16 p1, 0x16

    const/4 p3, 0x1

    if-ne p2, p1, :cond_40

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->ly_category:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_3a

    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->ly_search:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_3a

    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->ly_complete:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_3a

    .line 3
    :cond_24
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_39

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->my_channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_39
    return p3

    .line 6
    :cond_3a
    :goto_3a
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return p3

    :cond_40
    const/16 p1, 0x15

    if-ne p2, p1, :cond_60

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->my_channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return p3

    .line 9
    :cond_52
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->ly_category:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_5f
    return p3

    :cond_60
    const/4 p1, 0x4

    if-ne p2, p1, :cond_6a

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$onSendMyGroupNamesListener;

    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$onSendMyGroupNamesListener;->onSendMyGroup(Ljava/util/List;)V

    :cond_6a
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$showGroupDlgFragment$3(I)V
    .registers 6

    .line 1
    iput p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->selected_category:I

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->txt_category:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->categoryModelList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->txt_category_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->categoryModelList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->categoryModelList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    iget-boolean v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->is_m3u:Z

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    .line 5
    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->checkedItems:[Z

    const/4 p1, 0x0

    .line 6
    :goto_44
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v0

    if-ge p1, v0, :cond_67

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->checkedItems:[Z

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2, p1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_44

    .line 8
    :cond_67
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channelRecyclerAdapter:Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->checkedItems:[Z

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->setChannelData(Ljava/util/List;[Z)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    if-lez p1, :cond_7d

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p1, v3}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    :cond_7d
    return-void
.end method

.method private synthetic lambda$showSearchDlgFragment$4(Ljava/util/List;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->txt_count:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/300"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelRecyclerAdapter:Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;->setChannelData(Ljava/util/List;Z)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-virtual {p1, v0, v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceMyGroupChannels(Ljava/lang/String;Ljava/util/List;)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->checkedItems:[Z

    .line 6
    :goto_39
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result p1

    if-ge v1, p1, :cond_5c

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->checkedItems:[Z

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v2, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    aput-boolean v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 8
    :cond_5c
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channelRecyclerAdapter:Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->checkedItems:[Z

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;->setChannelData(Ljava/util/List;[Z)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;
    .registers 3

    .line 1
    new-instance v0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;

    invoke-direct {v0}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->key:Ljava/lang/String;

    .line 3
    iput p1, v0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->category_pos:I

    return-object v0
.end method

.method private showGroupDlgFragment()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_my_group"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 4
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    return-void

    .line 6
    :cond_18
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->categoryModelList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->selected_category:I

    invoke-static {v1, v3}, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->newInstance(Ljava/util/List;I)Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->groupDlgFragment:Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;

    .line 7
    new-instance v3, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->setOnSelectCategoryListener(Lcom/nettv/livestore/dlgfragment/GroupDlgFragment$onSelectCategoryListener;)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->groupDlgFragment:Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showSearchDlgFragment()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_search_channel"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 4
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    return-void

    .line 6
    :cond_18
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->categoryModelList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    iget v4, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->selected_category:I

    invoke-static {v1, v3, v4}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->newInstance(Ljava/util/List;Ljava/util/List;I)Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->searchChannelDlgFragment:Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;

    .line 7
    new-instance v3, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;->setOnSearchChannelListener(Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment$onSearchChannelListener;)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->searchChannelDlgFragment:Lcom/nettv/livestore/dlgfragment/SearchChannelDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_1c

    goto :goto_1a

    .line 2
    :sswitch_8
    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->showSearchDlgFragment()V

    goto :goto_1a

    .line 3
    :sswitch_c
    invoke-direct {p0}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->showGroupDlgFragment()V

    goto :goto_1a

    .line 4
    :sswitch_10
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$onSendMyGroupNamesListener;

    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$onSendMyGroupNamesListener;->onSendMyGroup(Ljava/util/List;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_1a
    return-void

    nop

    :sswitch_data_1c
    .sparse-switch
        0x7f0b0088 -> :sswitch_10
        0x7f0b0238 -> :sswitch_c
        0x7f0b023c -> :sswitch_10
        0x7f0b024e -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f14013e

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const p3, 0x7f0e0056

    .line 1
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 4
    invoke-direct {p0, p1}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->initView(Landroid/view/View;)V

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p2

    iput-boolean p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->is_m3u:Z

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->categoryModelList:Ljava/util/ArrayList;

    .line 7
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupCategory()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, 0x5

    :goto_3a
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedLiveCategoryModels()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_67

    .line 8
    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedLiveCategoryModels()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/CategoryModel;

    .line 9
    sget-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_64

    .line 10
    :cond_5f
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->categoryModelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_64
    add-int/lit8 p2, p2, 0x1

    goto :goto_3a

    .line 11
    :cond_67
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->txt_category:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->categoryModelList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->txt_category_name:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->categoryModelList:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/CategoryModel;

    invoke-virtual {p3}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p2

    iget-object p3, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->categoryModelList:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nettv/livestore/models/CategoryModel;

    iget-boolean v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->is_m3u:Z

    const-string v2, ""

    invoke-virtual {p2, p3, v2, v1, v0}, Lcom/nettv/livestore/helper/RealmController;->getLiveChannelsByCategory(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/String;ZI)Lio/realm/RealmResults;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    .line 14
    iget p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->category_pos:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_b9

    .line 15
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLiveFavChannels()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    .line 16
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->txt_my_category:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getFavorite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ca

    .line 17
    :cond_b9
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->key:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceMyGroupChannels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    .line 18
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->txt_my_category:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->key:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :goto_ca
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->txt_count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/300"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 v1, 0x8

    if-lez p2, :cond_100

    .line 21
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->my_channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->str_check:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->image_add:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10f

    .line 24
    :cond_100
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->my_channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->str_check:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->image_add:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    :goto_10f
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {p2}, Lio/realm/RealmResults;->size()I

    move-result p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->checkedItems:[Z

    const/4 p2, 0x0

    .line 28
    :goto_11a
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v1

    if-ge p2, v1, :cond_13c

    .line 29
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->checkedItems:[Z

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    iget-object v3, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    invoke-virtual {v3, p2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nettv/livestore/models/EPGChannel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, p3

    aput-boolean v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_11a

    .line 30
    :cond_13c
    new-instance p2, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->epgChannels:Lio/realm/RealmResults;

    iget-object v3, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->checkedItems:[Z

    new-instance v4, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;I)V

    invoke-direct {p2, v1, v2, v3, v4}, Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[ZLkotlin/jvm/functions/Function3;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channelRecyclerAdapter:Lcom/nettv/livestore/adapter/AddChannelRecyclerAdapter;

    .line 31
    iget-object v1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_17e

    .line 33
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 34
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 35
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array p2, p3, [Landroid/view/View;

    aput-object v1, p2, v0

    .line 36
    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v3, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$1;

    invoke-direct {v3, p2}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$1;-><init>([Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_18c

    .line 37
    :cond_17e
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 38
    :goto_18c
    new-instance p2, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelNames:Ljava/util/List;

    new-instance v4, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p3}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;I)V

    invoke-direct {p2, v2, v3, v0, v4}, Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZLkotlin/jvm/functions/Function3;)V

    iput-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->myChannelRecyclerAdapter:Lcom/nettv/livestore/adapter/MyChannelRecyclerAdapter;

    .line 39
    iget-object v2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->my_channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1cb

    .line 41
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->my_channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 42
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->my_channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p2, v0}, Lcom/nettv/livestore/view/LiveVerticalGridView;->setLoop(Z)V

    .line 43
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->my_channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    new-array p2, p3, [Landroid/view/View;

    aput-object v1, p2, v0

    .line 44
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->my_channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v1, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$2;

    invoke-direct {v1, p2}, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$2;-><init>([Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    goto :goto_1d9

    .line 45
    :cond_1cb
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->my_channel_list:Lcom/nettv/livestore/view/LiveVerticalGridView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 46
    :goto_1d9
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance v0, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 47
    iget-object p2, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->ly_category:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    return-object p1
.end method

.method public setOnSendMyGroupNamesListener(Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$onSendMyGroupNamesListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment;->listener:Lcom/nettv/livestore/dlgfragment/AddChannelDlgFragment$onSendMyGroupNamesListener;

    return-void
.end method
