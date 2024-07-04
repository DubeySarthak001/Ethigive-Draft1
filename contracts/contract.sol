pragma solidity ^0.8.9;

contract CrowdFunding {
struct Campaign {
address owner;
string title;
string description;
uint256 traget;
uint256 deadline;
uint256 amountCollected;
address[] donators;
} 

mapping (uint256 => Campaign) public campaigns;
uint256 public numberOfCampaigns = 0;
function createCampaign (address _owner, string memory_title, string memory _description, uint256 _target, uint256 _deadline) public returns (uint256) { Campaign storage campaign = campaigns [numberofCampaigns];
require (campaign.deadline < block.timestamp, "the deadline should be a date in the future");}Y

campaign.owner = _owner; 
campaign.title = _title;
campaign.description = _description;
campaign.target = _target;
campaign.deadline = _deadline;
campaign.amountCollected = 0;
numberOfCampaigns++;
return numberOfCampaigns - 1;
}


function donateToCampaign (uint256 _id) public payable { uint256 amount = msg.value;
Campaign storage campaign = campaigns [_id];
campaign.donators.push(msg.sender);
campaign.donations.push(amount);
(bool sent,) = payable (campaign.owner).call{value: amount}("");
if (sent) 
{ campaign.amountCollected = campaign.amountCollected + amount;
}
}
function getDonators (uint256 _id) view public returns (address [] memory, uint256 []
memory) {
return (campaigns [_id].donators, campaigns [_id].donations);
}
function getCampaigns () public view returns (Campaign [] memory) {
Campaign[] memory allCampaigns = new Campaign [] (numberOfCampaigns);


for( i = 0; i < numberOfCampaigns; i++){
      Campaihns[i] = item;


return allCampaigns;
}
}
