.class Landroidx/leanback/app/SearchFragment$ExternalQuery;
.super Ljava/lang/Object;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalQuery"
.end annotation


# instance fields
.field public mQuery:Ljava/lang/String;

.field public mSubmit:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/leanback/app/SearchFragment$ExternalQuery;->mQuery:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Landroidx/leanback/app/SearchFragment$ExternalQuery;->mSubmit:Z

    return-void
.end method
