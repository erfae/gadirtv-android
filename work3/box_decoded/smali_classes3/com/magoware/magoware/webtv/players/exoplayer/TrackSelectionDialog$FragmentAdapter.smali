.class final Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$FragmentAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "TrackSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FragmentAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "fragmentManager"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$FragmentAdapter;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;

    const/4 p1, 0x1

    .line 275
    invoke-direct {p0, p2, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$FragmentAdapter;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->access$000(Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$FragmentAdapter;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->access$000(Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$FragmentAdapter;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog$FragmentAdapter;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->access$100(Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/TrackSelectionDialog;->access$200(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
