.class Lio/realm/RealmBaseAdapter$1;
.super Ljava/lang/Object;
.source "RealmBaseAdapter.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/RealmBaseAdapter;-><init>(Lio/realm/OrderedRealmCollection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/OrderedRealmCollection<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/realm/RealmBaseAdapter;


# direct methods
.method public constructor <init>(Lio/realm/RealmBaseAdapter;)V
    .locals 0

    iput-object p1, p0, Lio/realm/RealmBaseAdapter$1;->this$0:Lio/realm/RealmBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/OrderedRealmCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lio/realm/RealmBaseAdapter$1;->this$0:Lio/realm/RealmBaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/OrderedRealmCollection;

    invoke-virtual {p0, p1}, Lio/realm/RealmBaseAdapter$1;->onChange(Lio/realm/OrderedRealmCollection;)V

    return-void
.end method
