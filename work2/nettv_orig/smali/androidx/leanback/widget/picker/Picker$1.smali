.class Landroidx/leanback/widget/picker/Picker$1;
.super Landroidx/leanback/widget/OnChildViewHolderSelectedListener;
.source "Picker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/picker/Picker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/picker/Picker;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/picker/Picker;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/picker/Picker$1;->this$0:Landroidx/leanback/widget/picker/Picker;

    invoke-direct {p0}, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    check-cast p4, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;

    .line 2
    iget-object p4, p0, Landroidx/leanback/widget/picker/Picker$1;->this$0:Landroidx/leanback/widget/picker/Picker;

    iget-object p4, p4, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 3
    iget-object p4, p0, Landroidx/leanback/widget/picker/Picker$1;->this$0:Landroidx/leanback/widget/picker/Picker;

    invoke-virtual {p4, p1}, Landroidx/leanback/widget/picker/Picker;->updateColumnAlpha(I)V

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Landroidx/leanback/widget/picker/Picker$1;->this$0:Landroidx/leanback/widget/picker/Picker;

    iget-object p2, p2, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-virtual {p2}, Landroidx/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result p2

    add-int/2addr p2, p3

    .line 5
    iget-object p3, p0, Landroidx/leanback/widget/picker/Picker$1;->this$0:Landroidx/leanback/widget/picker/Picker;

    invoke-virtual {p3, p1, p2}, Landroidx/leanback/widget/picker/Picker;->onColumnValueChanged(II)V

    :cond_0
    return-void
.end method
